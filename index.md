---
author: rinse
title: Slide Title
theme: white
---

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

## Image

The alt text is shown below the image.

![Sudachi](images/fruit_sudachi.png)

## Incremental

::: incremental
1. Item 1
2. Item 2
3. Item 3
:::

See [Pandoc docs](https://pandoc.org/MANUAL.html#incremental-lists) for further info.

See also [fenced_divs](https://pandoc.org/MANUAL.html#extension-fenced_divs) on the pandoc docs.

### Fragment

1. [Item 1]{.fragment}
2. [Item 2]{.fragment .highlight-red}
3. [Item 3]{.fragment .fade-out}

See [Various fragments](#various-fragments) for [more]{.fragment .highlight-red} fragments.

See also [bracketed_spans](https://pandoc.org/MANUAL.html#extension-bracketed_spans) on the [pandoc docs]{.underline}.


### Pause

Before pause

. . .

After pause

## Speaker notes

Type the 's' key to show the notes.

See [Pandoc docs](https://pandoc.org/MANUAL.html#speaker-notes) for further info.

::: notes
This is my note.
- Topic 1
- Topic 2
:::

## Formatting

* **Emphasis**, [Mark]{.mark}, ~~Strike out~~
* Inline code highlights: `Just f <> Just g`{.haskell}
* [Underline]{.underline}, [Smallcaps]{.smallcaps}
* C^OP^, H~2~O

See [Pandoc docs](https://pandoc.org/chunkedhtml-demo/8.12-inline-formatting.html) for further info.

## Various fragments

Text with revealjs fragments. Fade-in by default.

See [Reveal.js docs](https://revealjs.com/fragments/) for further info.

::: {.fragment}
1. Fade out
2. Fade out
3. Fade out
:::

### Fade out

::: {.fragment .fade-out}
1. Fade out
2. Fade out
3. Fade out
:::

### Fade up

::: {.fragment .fade-up}
1. Fade up
2. Fade up
3. Fade up
:::

### Fade down

::: {.fragment .fade-down}
1. Fade down
2. Fade down
3. Fade down
:::

### Fade left

::: {.fragment .fade-left}
1. Fade left
2. Fade left
3. Fade left
:::

### Fade right

::: {.fragment .fade-right}
1. Fade right
2. Fade right
3. Fade right
:::

### Fade in then out

::: {.fragment .fade-in-then-out}
1. Fade in then out
2. Fade in then out
3. Fade in then out
:::

### Current visible

::: {.fragment .current-visible}
1. Current visible
2. Current visible
3. Current visible
:::

### Fade in then semi out

::: {.fragment .fade-in-then-semi-out}
1. Fade in then semi out
2. Fade in then semi out
3. Fade in then semi out
:::

### Fade grow

::: {.fragment .grow}
1. Grow
2. Grow
3. Grow
:::

### Semi fade out

::: {.fragment .semi-fade-out}
1. Semi fade out
2. Semi fade out
3. Semi fade out
:::

### Shrink

::: {.fragment .shrink}
1. Fade shrink
2. Fade shrink
3. Fade shrink
:::

### Strike

[abc]{.fragment .strike}

Strike doesn't work on block elements.

### Highlight red

::: {.fragment .highlight-red}
1. Highlight red
2. Highlight red
3. Highlight red
:::

### Highlight green

::: {.fragment .highlight-green}
1. Highlight green
2. Highlight green
3. Highlight green
:::

### Highlight blue

::: {.fragment .highlight-blue}
1. Highlight blue
2. Highlight blue
3. Highlight blue
:::

### Highlight current red

::: {.fragment .highlight-current-red}
1. Highlight current red
2. Highlight current red
3. Highlight current red
:::

### Highlight current green

::: {.fragment .highlight-current-green}
1. Highlight current green
2. Highlight current green
3. Highlight current green
:::

### Highlight current blue

::: {.fragment .highlight-current-blue}
1. Highlight current blue
2. Highlight current blue
3. Highlight current blue
:::

## Columns

:::::::::::::: {.columns}
::: {.column width="40%"}
Split contents on the left side.
:::

::: {.column width="60%"}
Split contents on the right side.
:::
::::::::::::::

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
