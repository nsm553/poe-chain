for x in $(seq 0 2); do
    curl \
        -d \
        'sender_address=30819f300d06092a864886f70d010101050003818d0030818902818100c85df608dcf14cf69cee56ac849e8edd676cbc85bb8722f229a45b4ce5f36180fd30a0aae2a2680e9a75b318497e6bf136943168d39eecf3b52457f7a26ca5b1dd74235cf37f21b0fdf0bc8be58dfda7fda52ed76aa0f0e8b60082faa113d9a6cc462517a66725c0c72b7e4bb4a00547c5489415749af3016ab71306a0ab8ef90203010001&recipient_address=30819f300d06092a864886f70d010101050003818d0030818902818100c34e934b9a88c7f92bc5dacf6335ba13a720bcc93559ddd6489855f8b75db2e6f32a4cb31d3133ff00afaaab8621ec4f876859f11feedcf5532c8c00a4f16e4909e99a2f85e8e7f18628a693a427a748812b937c70a9b13cc954759fc5756f971ac6aad1a32ae7f9bf379fbc56e4c45cf27f3d82fcc449a6292dfa30241e3b430203010001&amount=15&signature=5a28943063e14783cbc91c1b5765fe467c87e7256438c2e36c5ace10b486f822fd21ca6836a8e7fb75a9e41eb85760905e5e9b8a087e808cd49d90ff80d57393b51aa9f5994f0253b7c49af9f91a516a8eb07bc130547ed1b6477adb450c233dd552954a7f0543b238994ae927cff827a1fa8ad0534be5cb75194dd32b363563' \
        -X POST http://127.0.0.1:500${x}/transactions/new
done