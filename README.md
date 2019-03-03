# pythonAPI
example how to put data (positions for player1, player2, player3 and dice row result):
curl https://z1.data-qubit.com/todos/data -d "task=[4,4,4,4]" -X PUT -v

API todos structure:
TODOS = {

    'map': {'snakes':{98:78, 95:75, 93:73, 87:24, 64:60, 62:19, 56:53, 49:11, 48:26, 16:6}, 'tunnels':{1:38, 4:14, 9:31, 21:42, 28:84, 36:44, 51:67, 71:91, 80:100}},

    'data': {'task': [3,15,22,4]},

    'result': {'player': 2 },
}


@method
def fill_tunnels():
    tunnels_num = random.randint(1, 10)
    start = []
    end = []
    for tunnel in range(tunnels_num):
        start.append(random.randint(3, 94)) # Leave first 3 and last 3 places free of ladders
    for x in start:
        end.append(random.randint(x+3, 100))
    #print(start, " : ", end)
    tunnels = list(start + end)
    return tunnels
@method
def fill_snakes():
    snakes_num = random.randint(1, 10)
    start = []
    end = []
    for snake in range(snakes_num):
        start.append(random.randint(6, 97)) # Leave first 3 and last 3 places free of snakes
    for x in start:
        end.append(random.randint(1, x-3))
    #print(start, " : ", end)
    snakes = list(start + end)
    return snakes
