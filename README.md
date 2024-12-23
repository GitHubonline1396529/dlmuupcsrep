# 大连海事大学非官方思政类课程报告 \LaTeX 模板

## 模板介绍

dlmuupcsrep (Report Template for DLMU Ungraduate Students' Political Course)是为大连海事大学本科学生准备的思政课程报告模板，目的是为大家节约思政类课程报告的写作时间，毕竟大家都不想在思政类课程报告写作上花时间。

由本校马克思主义学院给出的原版形势与政策课程报告模板（Word 格式文件）在本项目 `documents` 目录下。原始模板文件当中没有提供格式工具，实际上，电子版报告也没有任何格式要求。

对于封面页的样式，原始模板文件的排版方式十分随意散漫，导致元素在Word文档中存在很夸张的随机浮动。为了与原始文档尽可能保持一致，对于封面页上的各元素本模板的作者只好是拿着尺子量出位置来，再使用 \LaTeX 命令一点点精细化调整之后才排版出来的。

但是，对于原模板文件中全文等间距的下划线，到目前为止尚未找到一种完全合适的实现方式。实际上，原文档中全文等长度的下划线是在 Word 文件的每一行都添加超出页面长度的带下划线的空格后接换行符来实现的，这在更为正式的 \LaTeX 中确实做不到。用户可以选择使用 `\textbackslash uline` 命令包裹全文，或者直接无视这个问题的存在，因为当思政类课程的教师要求提交电子版而不是手写报告的时候他们一般不对格式作过多要求。

## 帮助完善这篇模板

如果您在模板中发现任何不足，欢迎参与模板的改进工作。您可以在 [本模板的 GitHub Repo](https://github.com/GitHubonline1396529/dlmuupcsrep) 提交相应的 Issue/Pull Request，或者创建模板的 Fork。

## 许可证

模板基于 [The LaTeX project public license (LPPL), version 1.3c](https://www.latex-project.org/lppl/lppl-1-3c/)发布。许可证具体的内容要求可点击链接查看，或翻阅工作区目录下的 [LICENDE.txt](./LICENCE.txt) 文件。禁止将本模板用于任何商业用途。

## 模板排版效果展示

![排版后生成的文档首页](./image/example.jpg)
