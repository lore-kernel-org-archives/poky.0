Return-Path: <Liviu.Gheorghisan@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62BA6E0089B; Wed, 17 Dec 2014 01:21:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id AA7FFE003AB
	for <poky@yoctoproject.org>; Wed, 17 Dec 2014 01:21:18 -0800 (PST)
Received: from [192.168.14.95] (192.168.14.95) by smtp.enea.com (172.21.1.208)
	with Microsoft SMTP Server id 14.3.158.1;
	Wed, 17 Dec 2014 10:21:11 +0100
Message-ID: <54914B07.8070907@enea.com>
Date: Wed, 17 Dec 2014 11:21:11 +0200
From: Liviu Gheorghisan <liviu.gheorghisan@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <1418300556-44714-1-git-send-email-liviu.gheorghisan@enea.com>
	<CAJTo0LZztuxH2F5dL666RgPrZvzJDu+V1jhfDTgbT-JSatQrwQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZztuxH2F5dL666RgPrZvzJDu+V1jhfDTgbT-JSatQrwQ@mail.gmail.com>
X-Originating-IP: [192.168.14.95]
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [dizzy][PATCH] Fixed openssh ptest
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
X-List-Received-Date: Wed, 17 Dec 2014 09:21:25 -0000
Content-Type: multipart/alternative;
	boundary="------------090604070403080806050503"

--------------090604070403080806050503
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello Ross,

On 12/16/2014 11:09 PM, Burton, Ross wrote:
> Hi Liviu,
>
> Patches for oe-core should go to the openembedded-core mailing list, 
> the Poky list is only for patches to meta-yocto.
My patch applies cleanly to oe-core/dizzy as well. I will re-send it to 
openembedded-core@lists.openembedded.org.
>
> On 11 December 2014 at 12:22, Liviu Gheorghisan 
> <liviu.gheorghisan@enea.com <mailto:liviu.gheorghisan@enea.com>> wrote:
>
>     ptests for openssh, apart from a lot of .sh scripts, also
>     require 2 executables to be cross-compiled for the target
>     and deployed there, that will be called from the test
>     scripts.
>
>
> Should this be applied to master too?
I only tested and reproduced the problem on dizzy. I did a quick diff 
now between oe-core/master and oe-core/dizzy and, from the OpenSSH  
point of view, the only difference is that the master branch contains an 
additional CVE fixed (CVE-2014-2532) that is not on dizzy, and that's 
it. So my presumption is that the problem reproduces on oe-core/master 
as well. However this patch does not apply on oe-core/master, because 
the OpenSSH recipe (openssh_6.6p1.bb) is slightly modified, so it must 
be adapted.
>
> Ross

-- 
Liviu Gheorghisan
Software Engineer

http://www.enea.com


--------------090604070403080806050503
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello Ross,<br>
    <br>
    <div class="moz-cite-prefix">On 12/16/2014 11:09 PM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LZztuxH2F5dL666RgPrZvzJDu+V1jhfDTgbT-JSatQrwQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra">Hi Liviu,</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Patches for oe-core should go to the
          openembedded-core mailing list, the Poky list is only for
          patches to meta-yocto.</div>
      </div>
    </blockquote>
    My patch applies cleanly to oe-core/dizzy as well. I will re-send it
    to <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a>.<br>
    <blockquote
cite="mid:CAJTo0LZztuxH2F5dL666RgPrZvzJDu+V1jhfDTgbT-JSatQrwQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 11 December 2014 at 12:22, Liviu
            Gheorghisan <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:liviu.gheorghisan@enea.com" target="_blank">liviu.gheorghisan@enea.com</a>&gt;</span>
            wrote:
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":gi" class="a3s" style="overflow:hidden">ptests
                for openssh, apart from a lot of .sh scripts, also<br>
                require 2 executables to be cross-compiled for the
                target<br>
                and deployed there, that will be called from the test<br>
                scripts.</div>
            </blockquote>
          </div>
          <br>
          Should this be applied to master too?</div>
      </div>
    </blockquote>
    I only tested and reproduced the problem on dizzy. I did a quick
    diff now between oe-core/master and oe-core/dizzy and, from the
    OpenSSH  point of view, the only difference is that the master
    branch contains an additional CVE fixed (CVE-2014-2532) that is not
    on dizzy, and that's it. So my presumption is that the problem
    reproduces on oe-core/master as well. However this patch does not
    apply on oe-core/master, because the OpenSSH recipe
    (openssh_6.6p1.bb) is slightly modified, so it must be adapted.<br>
    <blockquote
cite="mid:CAJTo0LZztuxH2F5dL666RgPrZvzJDu+V1jhfDTgbT-JSatQrwQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Liviu Gheorghisan
Software Engineer

<a class="moz-txt-link-freetext" href="http://www.enea.com">http://www.enea.com</a></pre>
  </body>
</html>

--------------090604070403080806050503--
