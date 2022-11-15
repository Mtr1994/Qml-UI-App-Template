# Qml-UI-App-Template
QML 工程的模板程序，附带一些编程技巧，方便后期快速回顾该编程技术。



### 语法注意事项

* `Item` 及其子类，用锚布局很合适，可用于处理 `铺满` 、`边距` 、`自动拉伸` 等情景

* 注册给 `QML` 的类对象（不是类型），如果是只读类型要加 `CONSTANT` 关键字，且不能有 `WRITE` 关键字，否则会报警告信息

* 主程序需要加以下属性，否则会导致拉伸、缩放的时候闪烁

  ```
  QCoreApplication::setAttribute(Qt::AA_UseOpenGLES);
  或者（二选一，截至文档上传，不知道具体原因）
  QCoreApplication::setAttribute(Qt::AA_UseSoftwareOpenGL);
  ```

* 其它
