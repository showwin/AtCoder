AtCoder
=======

http://atcoder.jp の回答集  


# Tips

## Python

### 再帰呼び出し回数の最大値設定

```python
import sys
sys.setrecursionlimit(10 ** 7)
```
をすることで、10**7回まで再帰的に関数を呼ぶことができる。
これを設定しないと(デフォルトはこれより小さいので) 回答が正しくても `RecursionError: maximum recursion depth exceeded in comparison` が発生し得る

### 入力された文字列をsplitしながらintにキャストする

```python
lst = [list(map(int, input().split())) for _ in range(N)]
```

文字列のままsortすると正しくソートできないので、必ず入力時点で数字にすること

### sortした結果の取得

`sorted()` で取得すると O(N^2) かかる。
優先度付きキュー heapq を使うと、O(logN) で取得できる。
heapq は最小の値をpopするので、最大の値が欲しい時には-1をかけた値をいれて、取り出してから-1でかけると良い。
(Bgn137.D)

### 木である頂点につながっている頂点を高速で探す

`[1, 2]` で頂点1と頂点2の辺があることを示している場合、どちらが根に近いかわからないので、子を探すときに1,2つめの要素を両方探す必要がある。

```python
children_of = [[] for _ in range(N)]
children_of[1].append(2)
children_of[2].append(1)
```

と持っておけば、O(1)である頂点につながっている頂点のリストを取得できる。

# memo
* まずはO(N)で計算できる方法を考えると良さそう
