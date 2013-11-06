Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A0EEE017A4
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 07:46:47 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id hv10so6877191vcb.29
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 07:46:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6qVHf71OdGA9wUQs02IIC8vfzWiL5ygS62phs+wd7t4=;
	b=mWE/KMrNzb/GdmBHsIzDFzPm+oSC1gaPRZFti/4q6aipCrRCl7tc3VxNzMZwBveZqo
	MV8hJ1eA4sgm8pU86WyfWJvG0OCgr4kw2zLjt9KYek748T1a/ho9nDxOzuE12wJxrueU
	o7X57MMBrOqyrserTyQf4oW/WKh5rsZuyV9UKQG2iXFMzxyGg06s3EfIrOGxgQ3VIJHu
	cEt9fShxgsU6osCzufwZcpag8UULA6X2hBnmBNjWLxH79AZv9Wjv0H0NbW4RLx/C3KHp
	TchvVe6Nuzb6LLY8wrzNAnPFJcW2DsFOfO1POWgW/1D6+tTJPTmpdIsvue9pOvAXbmeS
	eKXQ==
X-Gm-Message-State: ALoCoQl0WUWnRf7zDgsmp80tZcf6lG9hoUpLYXqR0oQIJwdQFdYJg//cC5BumUbo8thCqeJwvYW6
X-Received: by 10.58.186.173 with SMTP id fl13mr2914133vec.31.1383752806298;
	Wed, 06 Nov 2013 07:46:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 6 Nov 2013 07:46:26 -0800 (PST)
In-Reply-To: <3ab777991480aa4bff79130bd889ed25eba72fdc.1383743152.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
	<3ab777991480aa4bff79130bd889ed25eba72fdc.1383743152.git.ajlennon@dynamicdevices.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Nov 2013 15:46:26 +0000
Message-ID: <CAJTo0LbA64DxS2dp0h3LHTxkm709CiO73Nv3mYtxP3iQwnjF-w@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] sqlite3: Add support for column metadata API, bumped PR
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
X-List-Received-Date: Wed, 06 Nov 2013 15:46:48 -0000
Content-Type: text/plain; charset=UTF-8

On 6 November 2013 15:32, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:
> +PR = "r1"

No need to bump PR in oe-core, and please explain why enabling column
metadata is good and what the tradeoffs are.

Ross

