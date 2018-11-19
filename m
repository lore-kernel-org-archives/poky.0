Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D7F7E00B43; Sun, 18 Nov 2018 17:45:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D90AE007B3
	for <poky@yoctoproject.org>; Sun, 18 Nov 2018 17:44:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wAJ1iHLl013502
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 18 Nov 2018 17:44:27 -0800
Received: from [128.224.163.218] (128.224.163.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Sun, 18 Nov 2018 17:44:06 -0800
To: ravi chandran <ravchand_jm@yahoo.co.in>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <596462450.908260.1541682085636.ref@mail.yahoo.com>
	<596462450.908260.1541682085636@mail.yahoo.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <0fbff1ef-9b0c-d0bb-8ab8-cea6fda99296@windriver.com>
Date: Mon, 19 Nov 2018 09:43:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <596462450.908260.1541682085636@mail.yahoo.com>
Subject: Re: lib32-glibc headers populated instead glibc headers in the SDK toolchain - yocto 2.2.2
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
X-List-Received-Date: Mon, 19 Nov 2018 01:45:00 -0000
Content-Type: multipart/alternative;
	boundary="------------096193EDC3DC165F86B4AD90"
Content-Language: en-US

--------------096193EDC3DC165F86B4AD90
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2018/11/8 下午9:01, ravi chandran wrote:
> Hi all,
>
> I working as integrator in one project where both lib32 & lib64 need 
> to be supported. Hence, lib32-glibc & glibc both are there in yocto 
> build. There is an issue, I could not able to fix. In the final 
> toolchain, after running "bitbake <image> -c populate-sdk", it is 
> randomly, lib32-glibc headers are getting populated instead of glibc 
> headers.
>
> Ex: in the toolchain, <sysroots_dir>/aarch64/usr/include/endian.h - 
> lib32-glibc seen instead glibc header.
>
> Please let me know if anybody has any solution /work around for this.


Hi Ravi,

What image did you do populate_sdk? It turns out that no need to do 
populate_sdk for lib32 image. And the tasks has been removed by Robert 
in Yocto 2.5 for multilib images.

http://git.openembedded.org/openembedded-core/commit/?id=77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec.

commit e153efde9754a650e555f46cba09680baabd7d7e
Author: Robert Yang <liezhi.yang@windriver.com>
Date:   Mon Jan 8 16:27:34 2018 +0800

     multilib.bbclass: deltask populate_sdk and populate_sdk_ext

     The "bitbake image -cpopulate_sdk/ext" generates SDK/eSDK for all 
multilib
     variants, so "bitbake lib32-image -cpopulate_sdk/ext" is not 
needed, and it
     doesn't work well, for example:

     MACHINE ?= "qemux86-64"
     require conf/multilib.conf
     MULTILIBS = "multilib:lib32"
     DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

     $ bitbake lib32-core-image-minimal -cpopulate_sdk_ext
     [snip]
     Exception: FileExistsError: [Errno 17] File exists: 
'/buildarea/lyang1/test_q64/tmp/sysroots-components/core2-64/openssl/sysroot-providers/openssl10' 
-> 
'/buildarea/lyang1/test_q64/tmp/work/qemux86_64-pokymllib32-linux/lib32-core-image-minimal/1.0-r0/lib32-recipe-sysroot/sysroot-providers/openssl10'
     [snip]

     The problem is populate_sdk_ext installs all multilib variants, and
     extend_recipe_sysroot() handles foo-image depends lib32-foo-image, 
but doesn't
     handle lib32-foo-image depends foo-image, we can use a lot of trick 
ways to make
     it work:
     1) Get foo-image's RECIPE_SYSROOT when build lib32-foo-image
     2) Handle conflicts with foo-image.do_rootfs
     3) Handle conflicts when "bitbake lib32-foo-image foo-image 
-cpopulate_sdk_ext"

     And maybe other potential problems, this looks painful, so just 
delete the task.

     [YOCTO #12210]

     (From OE-Core rev: 77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec)

     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


Regards,
Kai


>
> Thanks in Advance,
> Ravi
>

-- 
Regards,
Neil | Kai Kang


--------------096193EDC3DC165F86B4AD90
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2018/11/8 下午9:01, ravi chandran
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:596462450.908260.1541682085636@mail.yahoo.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div>Hi all,</div>
      <div><br>
      </div>
      <div>I working as integrator in one project where both lib32 &amp;
        lib64 need to be supported. Hence, lib32-glibc &amp; glibc both
        are there in yocto build. There is an issue, I could not able to
        fix. In the final toolchain, after running "bitbake
        &lt;image&gt; -c populate-sdk", it is randomly, lib32-glibc
        headers are getting populated instead of glibc headers.</div>
      <div><br>
      </div>
      <div>Ex: in the toolchain,
        &lt;sysroots_dir&gt;/aarch64/usr/include/endian.h - lib32-glibc
        seen instead glibc header.</div>
      <div><br>
      </div>
      <div>Please let me know if anybody has any solution /work around
        for this.</div>
    </blockquote>
    <p><br>
    </p>
    <p>Hi Ravi,</p>
    <p>What image did you do populate_sdk? It turns out that no need to
      do populate_sdk for lib32 image. And the tasks has been removed by
      Robert in Yocto 2.5 for multilib images.</p>
    <p><a class="moz-txt-link-freetext" href="http://git.openembedded.org/openembedded-core/commit/?id=77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec">http://git.openembedded.org/openembedded-core/commit/?id=77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec</a>.</p>
    <p>commit e153efde9754a650e555f46cba09680baabd7d7e<br>
      Author: Robert Yang <a class="moz-txt-link-rfc2396E" href="mailto:liezhi.yang@windriver.com">&lt;liezhi.yang@windriver.com&gt;</a><br>
      Date:   Mon Jan 8 16:27:34 2018 +0800<br>
      <br>
          multilib.bbclass: deltask populate_sdk and populate_sdk_ext<br>
          <br>
          The "bitbake image -cpopulate_sdk/ext" generates SDK/eSDK for
      all multilib<br>
          variants, so "bitbake lib32-image -cpopulate_sdk/ext" is not
      needed, and it<br>
          doesn't work well, for example:<br>
          <br>
          MACHINE ?= "qemux86-64"<br>
          require conf/multilib.conf<br>
          MULTILIBS = "multilib:lib32"<br>
          DEFAULTTUNE_virtclass-multilib-lib32 = "x86"<br>
          <br>
          $ bitbake lib32-core-image-minimal -cpopulate_sdk_ext<br>
          [snip]<br>
          Exception: FileExistsError: [Errno 17] File exists:
'/buildarea/lyang1/test_q64/tmp/sysroots-components/core2-64/openssl/sysroot-providers/openssl10'
      -&gt;
'/buildarea/lyang1/test_q64/tmp/work/qemux86_64-pokymllib32-linux/lib32-core-image-minimal/1.0-r0/lib32-recipe-sysroot/sysroot-providers/openssl10'<br>
          [snip]<br>
          <br>
          The problem is populate_sdk_ext installs all multilib
      variants, and<br>
          extend_recipe_sysroot() handles foo-image depends
      lib32-foo-image, but doesn't<br>
          handle lib32-foo-image depends foo-image, we can use a lot of
      trick ways to make<br>
          it work:<br>
          1) Get foo-image's RECIPE_SYSROOT when build lib32-foo-image<br>
          2) Handle conflicts with foo-image.do_rootfs<br>
          3) Handle conflicts when "bitbake lib32-foo-image foo-image
      -cpopulate_sdk_ext"<br>
          <br>
          And maybe other potential problems, this looks painful, so
      just delete the task.<br>
          <br>
          [YOCTO #12210]<br>
          <br>
          (From OE-Core rev: 77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec)<br>
          <br>
          Signed-off-by: Robert Yang <a class="moz-txt-link-rfc2396E" href="mailto:liezhi.yang@windriver.com">&lt;liezhi.yang@windriver.com&gt;</a><br>
          Signed-off-by: Richard Purdie
      <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a><br>
    </p>
    <p><br>
    </p>
    <p>Regards,<br>
      Kai<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:596462450.908260.1541682085636@mail.yahoo.com">
      <div><br>
      </div>
      <div>Thanks in Advance,</div>
      <div>Ravi</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Regards,
Neil | Kai Kang</pre>
  </body>
</html>

--------------096193EDC3DC165F86B4AD90--
