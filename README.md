# pythonAPI
example how to put data (positions for player1, player2, player3 and dice row result):
curl https://z1.data-qubit.com/todos/data -d "task=[4,4,4,4]" -X PUT -v

API todos structure:
TODOS = {

    'map': {'snakes':{98:78, 95:75, 93:73, 87:24, 64:60, 62:19, 56:53, 49:11, 48:26, 16:6}, 'tunnels':{1:38, 4:14, 9:31, 21:42, 28:84, 36:44, 51:67, 71:91, 80:100}},

    'data': {'task': [3,15,22,4]},

    'result': {'player': 2 },
}
