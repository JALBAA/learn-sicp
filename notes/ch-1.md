# 通过过程(procedures)构建抽象(abstractions)

过程 (procedures)、 数据(data)

## 1.1 程序的基本元素

原子表达式

组合

抽象

### 1.1.1 表达式

### 1.1.2 命名（定义变量）和作用域(environment)

```scheme
(define size 2)
```

命名这种功能是：标识一个*变量*的*值*是一个可计算对象。

    We say that the name identifies a *variable* whose *value* is the object(computational objects).

“命名”建立起了可代换模型，语言的解释器、编译器做的事就是把程序中定义的各种代换模型展开，而开发的时候我们可以建立各种代换规则。

下面这段讲的是作用域

    It should be clear that the possibility of associating values with symbols and later retrieving them means that the interpreter must maintain some sort of memory that keeps track of the name-object pairs. This memory is called the environment (more precisely the global environment, since we will see later that a computation may involve a number of different environments).9

### 1.1.3 Evaluating Combinations - Lisp解释器计算表达式的规则

类似于中序遍历


### 1.1.4 Compound Procedures - 把过程组合起来（定义函数）

```scheme
(define (square x) (* x x))
```
