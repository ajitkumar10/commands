>>> a = [i for i in range(1,10)]
>>> a
[1, 2, 3, 4, 5, 6, 7, 8, 9]

>>> pos = 3

>>> b = [j for j in a if j > pos]
>>> b
[4, 5, 6, 7, 8, 9]





>>> from numpy import array

>>> c = numpy.array(a)
>>> c
array([1, 2, 3, 4, 5, 6, 7, 8, 9])

>>> c = c[c > pos]
>>> c
array([4, 5, 6, 7, 8, 9])
