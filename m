Return-Path: <marc.ferland@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC17E013E4
	for <poky@yoctoproject.org>; Tue,  4 Jun 2013 09:08:54 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id b11so786109iee.25
	for <poky@yoctoproject.org>; Tue, 04 Jun 2013 09:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=JTP9NK3n83ZzGxIjgN2FHnpRFtiydioXE/LtDpdicEU=;
	b=W5dDXY5rh3YmHqlCqmvHat7qOTxWcj6HdvyNISFV4iyNl2Nv9biJZP66mUAr7k4uMC
	cqbxQAkMEZFs5SKCEWxuuAAoxxhCxTqsoZEIwBHumCCq41vuj/Z/94apSw1FgSLIvloI
	OXTUmePdnwsSB+WEW8XAAeJn9eJUCxLEBmLxnKXKuHkJcNGrMkZEma48AhJKQkE0gEOW
	9m4CxqXYMVVQq1zuw+JlK8tFMAps13Qm2ubHMm/l/SUBT17WK4JAUpBKcoCzMhnpV9mY
	b02EArGoTYL6IUkvQIzPDKAbwyugdFT3ZpxatK+I2met19sv3oYIQRB+jRHYSbeJSyf+
	kiyw==
X-Received: by 10.50.128.101 with SMTP id nn5mr1230722igb.82.1370362134058;
	Tue, 04 Jun 2013 09:08:54 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id ik6sm2437628igb.3.2013.06.04.09.08.51
	for <poky@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 04 Jun 2013 09:08:52 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 04 Jun 2013 12:08:57 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: poky@yoctoproject.org
Date: Tue, 04 Jun 2013 12:08:57 -0400
Message-ID: <87obblamee.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
MIME-Version: 1.0
Subject: cherry-pick request from master to dylan stable
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
X-List-Received-Date: Tue, 04 Jun 2013 16:08:54 -0000
Content-Type: text/plain

Hi,

I had a build failure with libpoppler (with the qt4 bindings
activated). The following commit fixes it in dylan stable:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=b3a745c53291dc417e5e6747929433a6c97933f7

Thanks,

Marc

