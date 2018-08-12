from collections import OrderedDict

import binascii

import hashlib

def validate_pool(nodeWeights, last_hash):

    # consider non-zero node ids, add weights
    sortedNodes = OrderedDict(sorted(nodeWeights.items()))
    nodes = dict([ (k,v) for k,v in sortedNodes.items() if v > 0])
    hashCodes = dict()

    for id, v in nodes.items():
        #print("%s, %s", (id,v))

        if id > 0 and v > 0:
            count = 0
            while count < v:
                last_hash = hashlib.sha256(str(last_hash).encode()).hexdigest()
                hashCodes[last_hash] = id
                count +=1
    
    validatorPool = []
    sortedHashCodes = OrderedDict(sorted(hashCodes.items()))
    for k, v in sortedHashCodes.items():
        #print("k,v", (k,v))
        if v not in validatorPool:
            validatorPool.append(v)
        if len(validatorPool) == 3:
            break
    return validatorPool

    print(str(validatorPool))
    
def bit_length(n):
    s = bin(n)       # binary representation:  bin(-37) --> '-0b100101'
    s = s.lstrip('-0b') # remove leading zeros and minus sign
    return len(s)


validate_pool({2: 2, 3: 5, 1: 0, 5:1, 8:2}, 
    '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')