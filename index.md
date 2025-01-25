---
author: Author
title: Slide Title
theme: solarized
---

## Layouts

よく使うレイアウト

### Default

デフォルトは上下左右の中央寄せ

### Align top-left{.align-top-left}

左上寄せ

パワーポイントの「タイトルと本文」のようなレイアウト。

### 縦分割

:::: {.columns}
::: {.column}
Hello
:::

::: {.column}
World
:::
::::

### 名刺{.name-card}

:::: {.header}
<img src="./images/icon.svg" width="128px" height="128px"></img>

::: {}
**John Doe**

First line

Second line
:::
::::

::: {.body}
- 詳細1
- 詳細2
- 詳細3
:::

## Key bindings

:::::::::::::: {.columns}
::: {.column width="50%"}
- f: 	全画面
- o: 	アウトライン表示
- n: 	次のページ
- p: 	前のページ
- b: 	黒画面
:::

::: {.column width="50%"}
- s: 	ノートの表示
- h: 	左のページ
- j: 	下のページ
- k: 	上のページ
- l: 	右のページ
:::
::::::::::::::

### Speaker notes

Type the 's' key to show the notes.

See [Pandoc docs](https://pandoc.org/MANUAL.html#speaker-notes) for further info.

::: notes
This is my note.
- Topic 1
- Topic 2
:::

## Styles

### Apply styles to inline elements

[Apply styles with classes]{.color-red}

[Apply styles data-key]{key="background-black"}

[Apply styles with inline attributes]{style="color: lightpink"}

### Apply styles to block elements

::: {key="background-black" style="color: lightpink"}
Hello World
:::

## Incrementals

::: incremental
1. .color-aqua is defined in custom.css
2. So [data-key="background-black"] is
:::

See [Pandoc docs](https://pandoc.org/MANUAL.html#incremental-lists) for further info.

See also [fenced_divs](https://pandoc.org/MANUAL.html#extension-fenced_divs) on the pandoc docs.

### Fragments

1. [Item 1]{.fragment}
2. [Item 2]{.fragment .highlight-red}
3. [Item 3]{.fragment .fade-out}

See [Various fragments](#various-fragments) for [more]{.fragment .highlight-red} fragments.

See also [bracketed_spans](https://pandoc.org/MANUAL.html#extension-bracketed_spans) on the [pandoc docs]{.underline .color-aqua}.

### Pause

Before pause

. . .

After pause

## Formatting

* **Emphasis**, [Mark]{.mark}, ~~Strike out~~
* Inline code highlights: `Just f <> Just g`{.haskell}
* [Underline]{.underline}, [Smallcaps]{.smallcaps}
* C^OP^, H~2~O

See [Pandoc docs](https://pandoc.org/chunkedhtml-demo/8.12-inline-formatting.html) for further info.

## Fragments

Text with revealjs fragments. Fade-in by default.

See [Reveal.js docs](https://revealjs.com/fragments/) for further info.

### Fades

Works on both block and inline elements

1. [Fade in]{.fragment}
1. [Fade out]{.fragment .fade-out}
1. [Fade in then out]{.fragment .fade-in-then-out}
1. [Current visible]{.fragment .current-visible}
1. [Fade in then semi out]{.fragment .fade-in-then-semi-out}
1. [Semi fade out]{.fragment .semi-fade-out}

### Formattings

Works only on inline elements.

[Strike]{.fragment .strike}

### Fade towards

Works only on block elements.

::: {.fragment .fade-up}
Fade up
:::

::: {.fragment .fade-down}
Fade down
:::

::: {.fragment .fade-left}
Fade left
:::

::: {.fragment .fade-right}
Fade right
:::

### Grow and shrnk

Works only on block elements

::: {.fragment .grow}
Grow
:::

::: {.fragment .shrink}
Shrink
:::

### Highlights

Works on both block and inline elements.

1. [Highlight red]{.fragment .highlight-red}
1. [Highlight green]{.fragment .highlight-green}
1. [Highlight blue]{.fragment .highlight-blue}

### Highlight current *

1. [Highlight current red]{.fragment .highlight-current-red}
1. [Highlight current green]{.fragment .highlight-current-green}
1. [Highlight current blue]{.fragment .highlight-current-blue}

## Columns

:::::::::::::: {.columns}
::: {.column width="40%"}
Split contents on the left side.
:::

::: {.column width="60%"}
Split contents on the right side.
:::
::::::::::::::

## Animating sample

::::: {.flex-container .justify-content-center}
::: {.rotate-right .square key="background-black"}
:::
::: {.rotate-right .square key="background-black"}
:::
:::::

::::: {.flex-container .justify-content-left}
::: {key="background-black" .height-30 .grow-right}
:::
:::::

## Layout

::: {.r-stack}
::::: {.fragment}
<img src="./images/icon.svg" width="128px" height="128px"></img>
:::::
::::: {.fragment .rotate-right .square key="background-black"}
:::::
:::

See [Layout](https://revealjs.com/layout/) on reveal.js.

## Lazy loading{.align-top-left}

<iframe data-src="https://example.com" width="100%" height="100%"></iframe>

## Code block

Text with Haskell code.

```Haskell
yonedaMap :: (forall x. (a -> x) -> f x) -> f a
yonedaMap tau = tau id

yonedaMap' :: Functor f => f a -> (forall x. (a -> x) -> f x)
yonedaMap' a = \f -> fmap f a

coyonedaMap :: (forall x. (x -> a) -> f x) -> f a
coyonedaMap tau = tau id

coyonedaMap' :: Contravariant f => f a -> forall x. (x -> a) -> f x
coyonedaMap' a = \f -> contramap f a
```

## Latex

Text with Katex.

See [Katex docs](https://katex.org/docs/supported) for further information.

$$
A \simeq B \xLeftrightarrow{\mathrm{def}}
\begin{aligned}
g \circ f &= \mathrm{id}_A  \\
f \circ g &= \mathrm{id}_B
\end{aligned}
$$

## Footnotes

Here is a footnote reference[^1], and another.

The foot notes are shown in the last page.^[Inline notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]

[^1]: Here is the footnote.
