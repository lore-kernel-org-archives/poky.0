Return-Path: <marc.ferland@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E185E01541
	for <poky@yoctoproject.org>; Tue, 18 Jun 2013 06:44:04 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id m15so3462648wgh.35
	for <poky@yoctoproject.org>; Tue, 18 Jun 2013 06:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=hQjugG30UR1XEQH6Hno9Y85+NOqkd16sNFFS4x8KeAE=;
	b=XYEACB8mPOqF3tv7W05wpneqBKNN3ky0yppaS5dzB0IOZ/Eg4LHX1A0XlYUKvoumP+
	+ONKECZ+rVozutZdX8MCQaQP962Fj+ZRrdO8OpgVIwZab3vzH1/eKGP+DID+eVS96N84
	eTo1ZT2zYET6ynxCSPmY2qpfwBCKU0jMovpdV/2T3j61F200kvDjhO/sViB7tfTRJd1Y
	AmC6FGI2O8oFn052ZSJ/ZCe1fHJjs+zR6Y2G0Kr86ue6A57eYc9AgA9kBOPOhAUb+4Uq
	k0wH+FcUhaMFVtlpLAxTeoY3HL1nu9CvlyXn87eSjZoHrUA3ZDFSHovBMt8Fn4TqP9MJ
	P1Kg==
X-Received: by 10.180.126.2 with SMTP id mu2mr7716562wib.63.1371563043071;
	Tue, 18 Jun 2013 06:44:03 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id en3sm2228142wid.1.2013.06.18.06.44.00
	for <poky@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 18 Jun 2013 06:44:02 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 18 Jun 2013 09:43:57 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: poky@yoctoproject.org
Date: Tue, 18 Jun 2013 09:43:57 -0400
Message-ID: <87ip1bh6ua.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
MIME-Version: 1.0
Subject: cherry-pick request
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
X-List-Received-Date: Tue, 18 Jun 2013 13:44:08 -0000
Content-Type: text/plain

Hi,

Please cherry-pick commit:

http://cgit.openembedded.org/openembedded-core/commit/?id=6456b596a73232429e0d223089f32dc350ea20b0

to dylan stable.

This fix is needed to correctly build qt based applications with:

qmake CONFIG+=debug && make

Thanks,

Marc

