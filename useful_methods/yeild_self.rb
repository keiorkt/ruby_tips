
# Kernel#yield_self
# レシーバを引数として与えられたブロックを呼び出し、ブロックの評価結果を返す
# tapと似ているが、tapはレシーバ自信を返す

10.yield_self { |x| x ** 2 }
# 100

10.tap { |x| x ** 2 }
# 10

# 繋げてみる
10.yield_self { |x| x ** 2 }.yield_self { |y| y * 2 }
# 200

10.tap { |x| x ** 2 }.tap { |y| y * 2 }
# 10

# yield_selfとtapの組み合わせ

10.tap { |x| x ** 2 }.yield_self { |y| y * 2 }
# 20

10.yield_self { |x| x ** 2 }.tap { |y| y * 2 }
# 100

