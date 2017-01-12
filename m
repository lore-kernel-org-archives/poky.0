Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9651E007AE; Thu, 12 Jan 2017 04:10:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Jan 2017 04:10:44 PST
Received: from mailrelay10.public.one.com (mailrelay10.public.one.com
	[195.47.247.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AE2FE00524
	for <poky@yoctoproject.org>; Thu, 12 Jan 2017 04:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=MzwvS2vD0YDrQUEyqfp0cH/MDx47lyBGrRMSsm0s8o4=;
	b=YeLJ4jpXSgkuEXx5L+6pmkX3/Z4fN90+zjM3osxYOpPcxXFGPRARk61R8iX81sJjXmyCBgQIC5iVj
	wwMbX3xh/DJtUA5uMvnmB8rtkPN9WvD0zO1q2MLQFbMepTPeyShmxyY09gH17/RiV2tackyUcZPDVd
	SRDT3gyg/Q0GO1RM=
X-HalOne-Cookie: c81ca39886ad4acf5fbb78a3b6547e4d71af6d1c
X-HalOne-ID: fda2eaff-d8bf-11e6-ba0f-b82a72d06996
Received: from [192.168.1.194] (unknown [185.81.39.126])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id fda2eaff-d8bf-11e6-ba0f-b82a72d06996;
	Thu, 12 Jan 2017 12:09:38 +0000 (UTC)
To: poky@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <58777203.7010006@visionweeding.com>
Date: Thu, 12 Jan 2017 13:09:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: can I excute a "git config" before do_fetch ? to avoid HDD bloating
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jan 2017 12:10:46 -0000
Content-Type: multipart/alternative;
	boundary="------------090209030101060906040809"

--------------090209030101060906040809
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Dear Poky world

I wonder if it is possible to achieve the following ?

We have some home cooked , git controlled modules, that expose a public API.
  By company convention, public interfaces must be located in a lib/ 
directory within the module.

It would be nice to checkout only the interface stuff in lib/, without 
polluting the HDD with the entire module, when we only need the 
interface files.

*By hand it is easy:*

If a developer want to use this public interface, he/she will use the 
git  sparse-checkout feature, to avoid checking out the entire module - 
executing these commands will checkout only the lib directory

|mkdir <repo> cd <repo> git init git remote add -f origin <url> ||git config core.sparseCheckout true ||echo "lib/">>.git/info/sparse-checkout |

git pull origin <branch>  / checkout  will the only  affect  the lib/ 
directory *How to do from a recipe ? * I want to make a poky-recipe for 
the  public interface, so API users can specify DEPENDS  it their 
recipes So do I make my own class that inserts a buildstep  before 
do_unpack ? Ideas and concrete examples will be highly appreciated. Of 
course I can choose to let the API Recipe checkout the parent project in 
it's entirety, and the do it's personal build magic in on the lib/ only. 
No real disasters will happen, other that waisting some MB's on my 
colleagues HDD. BR Lars Larsen

-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


--------------090209030101060906040809
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    Dear Poky world<br>
    <br>
    I wonder if it is possible to achieve the following ?<br>
    <br>
    We have some home cooked , git controlled modules, that expose a
    public API.<br>
     By company convention, public interfaces must be located in a lib/
    directory within the module.<br>
    <br>
    It would be nice to checkout only the interface stuff in lib/, 
    without polluting the HDD with the entire module, when we only need
    the interface files.<br>
    <br>
    <b>By hand it is easy:</b><br>
    <br>
    If a developer want to use this public interface, he/she will use
    the git  sparse-checkout feature, to avoid checking out the entire
    module - executing these commands will checkout only the lib
    directory<br>
    <br>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <pre style="margin: 0px 0px 1em; padding: 5px; border: 0px; font-size: 13px; width: auto; max-height: 600px; overflow: auto; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; word-wrap: normal; color: rgb(36, 39, 41); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(239, 240, 241);"><code style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; white-space: inherit; background-color: rgb(239, 240, 241);">mkdir &lt;repo&gt;
cd &lt;repo&gt;
git init
git remote add -f origin &lt;url&gt;
</code><meta http-equiv="content-type" content="text/html; charset=utf-8"><code style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; white-space: inherit; background-color: rgb(239, 240, 241);">git config core.sparseCheckout true
</code><meta http-equiv="content-type" content="text/html; charset=utf-8"><code style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; white-space: inherit; background-color: rgb(239, 240, 241);"><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">echo </span><span class="str" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(125, 39, 39);">"lib/"</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);"> </span><span class="pun" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">&gt;&gt;</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);"> </span><span class="pun" style="margin: 0px; pad
ding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">.</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">git</span><span class="pun" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">/</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">info</span><span class="pun" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">/</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">sparse</span><span class="pun" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">-</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; color: rgb(48, 51, 54);">checkout
</span></code>
</pre>git pull origin &lt;branch&gt;  / checkout  will the only  affect  the lib/ directory

<b>How to do from a recipe ?
</b>
I want to make a poky-recipe for the  public interface, so API users can specify DEPENDS  it their recipes 

So do I make my own class that inserts a buildstep  before do_unpack ?

Ideas and concrete examples will be highly appreciated. 
Of course I can choose to let the API Recipe checkout the parent project in it's entirety, and the do it's personal build magic in on the lib/ only. No real disasters will happen, other that waisting some MB's on my colleagues HDD.


BR Lars Larsen
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<pre class="moz-signature" cols="72">-- 

Best Regards
Lars Larsen 

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
<a class="moz-txt-link-abbreviated" href="http://www.visionweeding.com">www.visionweeding.com</a>

</pre></body></html>

--------------090209030101060906040809--
