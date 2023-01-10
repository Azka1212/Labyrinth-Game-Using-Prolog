# from pyswip import Prolog

# prolog = Prolog()

# prolog.consult("iterative_deepening.pl")

# # print("iterative_deepening.pl")

# # c = list(prolog.query("start"))

# # prolog.assertz("start")


from pyswip import Prolog
prolog = Prolog()
prolog.assertz("father(michael,john)")