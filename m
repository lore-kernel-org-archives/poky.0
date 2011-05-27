Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews10.kpnxchange.com (cpsmtpb-ews10.kpnxchange.com
	[213.75.39.15])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2908C4C803D6
	for <poky@yoctoproject.org>; Fri, 27 May 2011 01:10:12 -0500 (CDT)
Received: from cpbrm-ews22.kpnxchange.com ([10.94.84.153]) by
	cpsmtpb-ews10.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 27 May 2011 08:10:12 +0200
Received: from CPSMTPM-CMT108.kpnxchange.com ([195.121.3.24]) by
	cpbrm-ews22.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 27 May 2011 08:10:11 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT108.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 27 May 2011 08:10:11 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Fri, 27 May 2011 08:10:08 +0200
Message-ID: <4DDF404D.2010504@de-haardt.com>
Date: Fri, 27 May 2011 08:10:21 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DDE01BB.3000109@de-haardt.com> <1306402981.27470.97.camel@rex>	
	<4DDE37EE.101@de-haardt.com> <1306418056.27470.181.camel@rex>
In-Reply-To: <1306418056.27470.181.camel@rex>
X-OriginalArrivalTime: 27 May 2011 06:10:11.0419 (UTC)
	FILETIME=[BC8DD2B0:01CC1C34]
X-RcptDomain: yoctoproject.org
Cc: poky <poky@yoctoproject.org>
Subject: Re: wrong rpm name qt package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 May 2011 06:10:13 -0000
Content-Type: multipart/alternative;
	boundary="------------070701010307090205000209"

--------------070701010307090205000209
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/26/2011 03:54 PM, Richard Purdie wrote:
> On Thu, 2011-05-26 at 13:22 +0200, Gerard van den Bosch wrote:
>> On 05/26/2011 11:43 AM, Richard Purdie wrote:
>>> On Thu, 2011-05-26 at 09:31 +0200, Gerard van den Bosch wrote:
>>>> I have developed a shared library using Qt, it compiles without any
>>>> problems but it goes wrong with rpm packaging.
>>>> When it packages it should create a rpm package with the name
>>>> "libxmlpcpqt" but it creates a package with "libxmlpcpqt1".
>>>> My question is where does the '1' come from?
>>>>
>>>> The install part from the recipe is as follows:
>>>> do_install() {
>>>>        install -d ${D}${libdir}
>>>>        install -m 0755 ${S}/${PN}.so ${D}${libdir}
>>>> }
>>>>
>>>> In
>>>> the /tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib the libxmlpcpqt.so file correctly exists.
>>> This happens as debian style package naming is enabled (debian.bbclass
>>> is inherited).
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>> I tried removing debian from the INHERITS+= variable in the poky.conf
>> but then it printed it couldn't find the function that is inside
>> debian.bbclass and didn't create the package.
>> Modifying debian.bbclass would be too drastic so I work around it like
>> this:
>> Added PACKAGES+= ${PN}1 to my recipe
>> Modified the IMAGE_INSTALL+= variable from libxmlpcpqt to libxmlpcpqt1
>> This resulted in a working solution.
> This is a bug and you should never need to do this. IMAGE_INSTALL should
> be getting remapped to the new names. The code that is meant to do that
> is at the top of image.bbclass:
>
>      # If we don't do this we try and run the mapping hooks while parsing which is slow
>      # bitbake should really provide something to let us know this...
>      if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
>          runtime_mapping_rename("PACKAGE_INSTALL", d)
>          runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)
>
> Can you check that the code is being called? I suspect something to do
> with the BB_WORKERCONTEXT variable has been broken. We should be doing
> this in a better way anyhow...
>
> Cheers,
>
> Richard
>
Ok, I have tried the following with the Bernard release:

print "hello"
print bb.data.getVar('BB_WORKERCONTEXT', d, True)
if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
	print "hello2"
	runtime_mapping_rename("PACKAGE_INSTALL", d)
	runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)

The "hello" gets printed, and the variable outputs "None", the "hello2" doesn't get printed because the variable is None.

In the laverne release I use here it checks on something else namely:
if bb.data.getVar('__RUNQUEUE_DO_NOT_USE_EXTERNALLY', d, True) is not None:
I can't add print commands there because it gives ident errors, found that has something todo with spaces but couldn't get it working.

I tried searching some further, I see in this commit that the if is added, that is in the laverne release:
http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=4e0ee648b4c18b770aba11921370258f3e2aaeef

Then a few commits later it is changed to the BB_WORKERCONTEXT:
http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=e427f251a457f3015c4b1cdf1648c53a9acc646d

Thus I tried to figure out what sets the BB_WORKERCONTEXT, I found it in two files in bitbake namely cooker.py and runqueue.py.
Eventually it leads to the loading of the configuration file and something set BB_WORKERCONTEXT then but I couldn't figure out what sets the variable.

I looked up the commits where it is added to bitbake:
http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/runqueue.py?id=1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584  <http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/runqueue.py?id=1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584>
http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/cooker.py?id=ca09a6f08cc29f79f9742058d737deaef9d6d5ef  <http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/cooker.py?id=ca09a6f08cc29f79f9742058d737deaef9d6d5ef>

But I couldn't figure out what the changes did and I did not come further than this.
If I need to try something else out, let me know.

Regards,
Gerard



--------------070701010307090205000209
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    On 05/26/2011 03:54 PM, Richard Purdie wrote:
    <blockquote cite="mid:1306418056.27470.181.camel@rex" type="cite">
      <pre wrap="">On Thu, 2011-05-26 at 13:22 +0200, Gerard van den Bosch wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On 05/26/2011 11:43 AM, Richard Purdie wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On Thu, 2011-05-26 at 09:31 +0200, Gerard van den Bosch wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">I have developed a shared library using Qt, it compiles without any
problems but it goes wrong with rpm packaging.
When it packages it should create a rpm package with the name
"libxmlpcpqt" but it creates a package with "libxmlpcpqt1".
My question is where does the '1' come from?

The install part from the recipe is as follows:
do_install() {
      install -d ${D}${libdir}
      install -m 0755 ${S}/${PN}.so ${D}${libdir}
}

In
the /tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib the libxmlpcpqt.so file correctly exists.
</pre>
          </blockquote>
          <pre wrap="">This happens as debian style package naming is enabled (debian.bbclass
is inherited).

Cheers,

Richard

</pre>
        </blockquote>
        <pre wrap="">I tried removing debian from the INHERITS+= variable in the poky.conf
but then it printed it couldn't find the function that is inside
debian.bbclass and didn't create the package.
Modifying debian.bbclass would be too drastic so I work around it like
this:
Added PACKAGES+= ${PN}1 to my recipe
Modified the IMAGE_INSTALL+= variable from libxmlpcpqt to libxmlpcpqt1
This resulted in a working solution.
</pre>
      </blockquote>
      <pre wrap="">
This is a bug and you should never need to do this. IMAGE_INSTALL should
be getting remapped to the new names. The code that is meant to do that
is at the top of image.bbclass:

    # If we don't do this we try and run the mapping hooks while parsing which is slow
    # bitbake should really provide something to let us know this...
    if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
        runtime_mapping_rename("PACKAGE_INSTALL", d)
        runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)

Can you check that the code is being called? I suspect something to do
with the BB_WORKERCONTEXT variable has been broken. We should be doing
this in a better way anyhow...

Cheers,

Richard

</pre>
    </blockquote>
    <pre>Ok, I have tried the following with the Bernard release:

print "hello"
print bb.data.getVar('BB_WORKERCONTEXT', d, True)
if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
	print "hello2" 
	runtime_mapping_rename("PACKAGE_INSTALL", d)
	runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)</pre>
    <pre>The "hello" gets printed, and the variable outputs "None", the "hello2" doesn't get printed because the variable is None.

In the laverne release I use here it checks on something else namely:
if bb.data.getVar('__RUNQUEUE_DO_NOT_USE_EXTERNALLY', d, True) is not None:
I can't add print commands there because it gives ident errors, found that has something todo with spaces but couldn't get it working.

I tried searching some further, I see in this commit that the if is added, that is in the laverne release:
<a class="moz-txt-link-freetext" href="http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=4e0ee648b4c18b770aba11921370258f3e2aaeef">http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=4e0ee648b4c18b770aba11921370258f3e2aaeef</a>

Then a few commits later it is changed to the BB_WORKERCONTEXT:
<a class="moz-txt-link-freetext" href="http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=e427f251a457f3015c4b1cdf1648c53a9acc646d">http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=e427f251a457f3015c4b1cdf1648c53a9acc646d</a>

Thus I tried to figure out what sets the BB_WORKERCONTEXT, I found it in two files in bitbake namely cooker.py and runqueue.py.
Eventually it leads to the loading of the configuration file and something set BB_WORKERCONTEXT then but I couldn't figure out what sets the variable.

I looked up the commits where it is added to bitbake:
<a href="http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/runqueue.py?id=1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584" target="_blank">http://git.pokylinux.org/cgit/<wbr>cgit.cgi/poky/commit/bitbake/<wbr>lib/bb/runqueue.py?id=<wbr>1f3e313fd5cc5ae8ea838bf8fcdeda<wbr>ce3cb72584</a>
<a href="http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/cooker.py?id=ca09a6f08cc29f79f9742058d737deaef9d6d5ef" target="_blank">http://git.pokylinux.org/cgit/<wbr>cgit.cgi/poky/commit/bitbake/<wbr>lib/bb/cooker.py?id=<wbr>ca09a6f08cc29f79f9742058d737de<wbr>aef9d6d5ef</a>

But I couldn't figure out what the changes did and I did not come further than this.
If I need to try something else out, let me know.

Regards,
Gerard

</pre>
  </body>
</html>

--------------070701010307090205000209--
