import pathlib

def read_output():
    project_path = str(pathlib.Path().resolve())
    file_path = str(pathlib.Path(__file__).parent.resolve())
    path = file_path[len(project_path):]
    path = '.' + path.replace('\\', '/') + '/output.txt'

    with open(path) as f:
        lines = f.readlines()

    steps = []
    times = []

    add_steps = False
    add_times = False
    for line in lines:
        if line[:4] == "step":
            add_steps = True

        if line[:4] == "time":
            add_times = True

        if add_times:
            if len(line) > 8:
                line = line[15:-1]
                line = [line[:4], line[5:]]
                times.append(line)

        elif add_steps:
            if len(line) > 8:
                line = line[11:-1].split()
                steps.append(line)

    print(steps)
    print(times)
