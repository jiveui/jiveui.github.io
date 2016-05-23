---
layout: post
title:  "Get started with Jive"
date:   2016-05-22 00:00:00
images: images/launch1.jpg
excerpt:
    How to install and use Jive command line tool
categories: install download
---

First of all there are 2 versions of Jive.

- [Legacy][jive-legacy]. There are several apps in production . We support it but not planning new development there.
- [Next][jive]. It's a main version. Now it's under construction. We're going to have huge progress here in 2016.

Whole information here is about the next version.

## Install

Requirements:

- [Haxe Toolkit](http://haxe.org/download/)
- [OpenFL](http://www.openfl.org/documentation/getting-started/installing-openfl/)
- actuate
- unifill
- svg
- bindx2
- hml

So after installing the Haxe Toolkit and the OpenFl it needs to run:

{% highlight bash %}
haxelib install actuate
{% endhighlight %}
{% highlight bash %}
haxelib install unifill
{% endhighlight %}
{% highlight bash %}
haxelib install svg
{% endhighlight %}
{% highlight bash %}
haxelib install bindx2
{% endhighlight %}
{% highlight bash %}
haxelib install hml
{% endhighlight %}

The next version is not in the lib.haxe.org. So it needs to clone it from github repository:

{% highlight bash %}
haxelib git jive https://github.com/jiveui/jive
{% endhighlight %}

## Usage

The Jive has a command tool. It can be run by

{% highlight bash %}
haxelib run jive
{% endhighlight %}

The arguments are the same as the OpenFL command line tool has. So to test the Jive app you can just run

{% highlight bash %}
haxelib run jive test [platform]
{% endhighlight %}


## The first app

The next step is to create an app using Jive. [Let's create a Heart of Jive application]({% post_url 2016-05-21-heart %}).

[jive]:   https://github.com/jiveui
[jive-legacy]:   https://github.com/jiveui/jive/tree/master
