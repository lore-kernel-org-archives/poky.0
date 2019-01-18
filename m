Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 449C0E00CEA; Fri, 18 Jan 2019 00:45:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63CF8E00C4E;
	Fri, 18 Jan 2019 00:45:48 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id x23so8416371oix.3;
	Fri, 18 Jan 2019 00:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mBhvkOydqgyF101A1MUYWIPEihrh5wCM5VF/HIIrbGQ=;
	b=gdNlMZr509fMqJkn+OgNp/qw+QDZrUGAzTb1JvnKmtWZZoQ1a9CIf2P1g+o7l+2RgE
	+i1lB2pu6xCof+xqvem3pWETBW+6PGEuzjqWxt36+weZiyGdQJNkuhe3NeuycQVhIt+c
	awrubRfS0nCdxkrqbKhMaMQoy30SryaeIdJ6zJSQuypuy5ipSyDy0AlIeGtU2vTBt5nu
	LddLeSat6xG8pQcYHXSUU1BnPVQ7NzTQ6nI60hjdXjOb2gbu6n1mGXeNNylR1qtzHMWz
	7VoJekBwH00r1K7ZLqMVoOJyCpJ4v5ILOfH/i9l1Ysb9UzNolU8/85SV4Z3Ia70o0HzQ
	VZ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mBhvkOydqgyF101A1MUYWIPEihrh5wCM5VF/HIIrbGQ=;
	b=JpubGD3jha9tfedB2Pbf3L7rg0UDVb2eCRt2KZYy1cEgvoovD823nedNBmowUexwxT
	i8h1UO60YMp2+vLe2CeruFQdyd0B5Lfao2Hoo2I3lsi2oV4rGed6eCVysMvndUKueK3p
	72t8wnP2SoFhgAulZjGf5aRuTetMD5GVbPekN44WeWb7vpGuQHuPfEB5P+bwRsSUai2U
	WvIEjmQzaNibHhL9jgyZr4bJx9RwFwS+tabyteObeTxjFSqhD1JuqQoT9WbqJ2z4cfzT
	uFgN3u/kfka7NuPI6i9qm+2zKHojzDj395Ar29IX3X/4KB8fsTABdMfX4Bvn6yUJBrhB
	yzlQ==
X-Gm-Message-State: AJcUukfH1UonB9roh3BrBXCasdk8IxIp5Ki7s0Cni66Z6SKQYdEmfY/8
	lOAOki78rn5jR12r86e4LMyMqW9CTydu0mp4PcEwketex8o=
X-Google-Smtp-Source: ALg8bN6r86z4+voiv1iDfA/KNW7gC4zIRnqG1nodeHxTOB/vXm3fSg7Fz8r1y0tAhtWkcks1yAivUx6mysVHxtf6IA4=
X-Received: by 2002:aca:b2c4:: with SMTP id b187mr140223oif.245.1547801147127; 
	Fri, 18 Jan 2019 00:45:47 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Fri, 18 Jan 2019 09:45:35 +0100
Message-ID: <CAFsTbWf2+Kxt79GM0SUGaiyn6kpV4-bg9AqwiHMQ-DqnqRWcEQ@mail.gmail.com>
To: yocto-bsp@yoctoproject.org, yocto-builds@yoctoproject.org, 
	meta-intel@yoctoproject.org, 
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, Poky Project <poky@yoctoproject.org>, 
	yocto-infrastructure@yoctoproject.org, 
	Yocto-mailing-list <yocto@yoctoproject.org>, 
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org
Subject: ERROR: Nothing PROVIDES 'virtual/libgles2'
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
X-List-Received-Date: Fri, 18 Jan 2019 08:45:49 -0000
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Experts,

I am seeing the below error when i am trying to integrate freescale
layers into my custom os?

srinishanmugam@ni-bln-07594:~/customBuild_test_rpi/customos/build_customosdistro_imx8$
bitbake -f -c clean custom-image-debug-imx8
WARNING: Host distribution "ubuntu-18.04" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
WARNING: /home/srinishanmugam/customBuild_test_rpi/customos/sources/poky/meta/recipes-graphics/drm/libdrm_2.4.91.bb:
Unable to get checksum for libdrm SRC_URI entry drm-update-arm.patch:
file could not be found
      | ETA:  0:00:05
Parsing recipes: 100%
|#############################################################################################################################################################################################################################################|
Time: 0:00:09
Parsing of 2275 .bb files complete (0 cached, 2275 parsed). 3177
targets, 382 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/libgles2' (but
/home/srinishanmugam/customBuild_test_rpi/customos/sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb,
/home/srinishanmugam/customBuild_test_rpi/customos/sources/poky/meta/recipes-graphics/cairo/cairo_1.14.12.bb
DEPENDS on or otherwise requires it)
imx-gpu-viv PROVIDES virtual/libgles2 but was skipped: incompatible
with machine imx8mmevk (not in COMPATIBLE_MACHINE)
NOTE: Runtime target 'qtbase' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['qtbase', 'virtual/libgles2']
ERROR: Required build target 'custom-image-debug-imx8' has no
buildable providers.
Missing or unbuildable dependency chain was:
['custom-image-debug-imx8', 'qtbase', 'virtual/libgles2']

Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Could you anyone please provide me some inputs for resolving the above issue?

Many Thanks in advance

