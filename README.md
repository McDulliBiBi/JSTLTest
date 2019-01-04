pom.xml中需要加入jstl jar包的依赖


2019/01/04：
一.自定义标签库引入的主要作用是避免在JSP中写Java代码。
二.需要实现的步骤：
0.pom.xml中需要引入jsp-api jar包依赖。（注：该依赖的scope属性要设为provided，因为Tomcat容器中已经有这个jar包了，provided允许maven在编译，测试时使用该jar包，打war包及运行时使用的还是Tomcat容器中的jar包。）
1.新增继承Tag父类的实现类，重写父类中的doStartTag()，doEndTag()，在这些方法中填写原本需要在JSP中实现的java代码
2.新增.tld文件，声明允许使用的自定义标签及标签的属性
3.web.xml中需要增加自定义标签库的声明
4.JSP中最上面需要引入自定义标签库的声明，然后在head或者body标签中使用自己定义的标签库
三.咳咳咳：
这两天稍微瞄了下自定义标签库是因为在看TableauServer Vizql war包时发现的这个东东，不理解他们的JSP里为什么会有这种写法的代码，不清楚这有什么作用，流程是什么。虽然还有很多细节没有看到，但大致的流程还是了解了。。
