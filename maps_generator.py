def all_connected(n):
    assert n > 0
    output = []
    for i in range(1, n + 1):
        for j in range(i + 1, n + 1):
            output.append((i, j))
    return output


def line(s, n):
    assert s < n
    assert n > 0
    output = []
    for i in range(s, n):
        output.append((i, i + 1))
    return output


def circle(s, n):
    assert s < n
    assert n > 0
    return line(s, n) + [(n, s)]


def two_blocks(n):
    assert n % 2 == 0
    assert n > 0
    return circle(1, n // 2) + circle(n // 2 + 1, n) + [(n // 2, n // 2 + 1)]


def two_blocks_with_line(n1, l, n2):
    return circle(1, n1) + line(n1, l) + circle(l, n2)


def central_point(n):
    assert n >= 2
    return [(1, i) for i in range(2, n + 1)]
