Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 001174C80050
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 23:40:44 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so429052wwd.11
	for <poky@yoctoproject.org>; Mon, 07 Mar 2011 21:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=oehgnvQBzw/zW1Hk0w8xw2aIIg2JYGduCroI63kyRsY=;
	b=eEH2PAP2ztzKvi2YzCNbu9ixL1rGF+dIt6zGW3CMEKLv6eTY0BSaGfA1o2FmeYzp6k
	XF6rVPfoyDXjRsPJS2+GYDxMvrlr40p8rKvGoTqv4arsFCvQJtCRmQOm3fpo16uUhqjZ
	SEGzerA17S4EcqJ+jzuU2Sqg+0/BOMw3+DXuc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=KEBPe/K3foY36YD98KZM9cdAyFh/TggUaHQA26goH+cw+6280ICTYnLqDVOXkIf+zY
	VWlzugoMiVdM00/0F6V/7P9u+vtdwPXdEc0q1OyZpkyCDbRqsuVOmW95zgCis7BKQvti
	vKLpYO8yABIFqGC2h9CVfwOD24Qs6zUxaSh1A=
MIME-Version: 1.0
Received: by 10.216.198.27 with SMTP id u27mr4138694wen.47.1299562843878; Mon,
	07 Mar 2011 21:40:43 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Mon, 7 Mar 2011 21:40:43 -0800 (PST)
Date: Tue, 8 Mar 2011 11:10:43 +0530
Message-ID: <AANLkTi=up7xTGUbD85evMyutLjjqhAsUnfPTjXy+vZkH@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: error while adding alsa-utils to my recipe
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
X-List-Received-Date: Tue, 08 Mar 2011 05:40:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,
                     While compilation alsa-utils 1.0.21 I got:
checking for form.h... yes checking for new_panel in -lpanelw... no
configure: error: panelw library not found.
Could you please suggest me a solution.

I am using ubunti 10.04 on 64 bit machine



Thanks and regards
-- 
V kubera Samrat

