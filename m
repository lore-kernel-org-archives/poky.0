Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2752CE011C0
	for <poky@yoctoproject.org>; Tue, 25 Sep 2012 04:59:34 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 25 Sep 2012 04:59:19 -0700
Received: by obhx4 with SMTP id x4so71656obh.35
	for <poky@yoctoproject.org>; Tue, 25 Sep 2012 04:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=kktcekaPZwoyJdlwP2tnPe272FWhr7eoWFVi7Bkql4s=;
	b=Zx7CUH4nr8GqrSOQeGjUe7a5WVggBwXpjyYrYDH4B65j8nv3PdwNPnGPs+LnSnMKJA
	cKDlZ+suBtNFPLRjJW7/867admJnsmzSuUU/JANo4h4z7Gg7QTLHRfTb+PAqsLlqbYxQ
	krLRLexOTGFrugGJtIy8eaiPbJYMZYP9tnPBpt5ESJwOcLzVhGsG4M7BzZGfQvWvINam
	H7GmIt50hPGlbiW/gRtHcTHaTWoH+sqlTn5ReE/e9gMlJeB/+vj8utYMe7SZpOQQawcK
	JJyFGfZvS42UIhdAU2sJ0mbJnTONjPTPYxclmZacxhpvuAWlWfsjt7igFnRV/keekXee
	LkbA==
Received: by 10.182.154.70 with SMTP id vm6mr12539817obb.50.1348574372682;
	Tue, 25 Sep 2012 04:59:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Tue, 25 Sep 2012 04:59:12 -0700 (PDT)
In-Reply-To: <1348574138-23441-1-git-send-email-Qi.Chen@windriver.com>
References: <1348574138-23441-1-git-send-email-Qi.Chen@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Sep 2012 12:59:12 +0100
Message-ID: <CAJTo0Lb4sVfhALkh+zrahkO3SQH+ghNtmcss2w=uXpNQrq9ebg@mail.gmail.com>
To: Qi.Chen@windriver.com
X-Gm-Message-State: ALoCoQngZUxV5ID34OiArCJgD09JLqLMYKaXXyQeg94adLntXmVJqmNhu92oCoDEGRUE/rbS2UCM
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] dbus-native: add missing dependencies
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
X-List-Received-Date: Tue, 25 Sep 2012 11:59:34 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2012 12:55,  <Qi.Chen@windriver.com> wrote:
> From: Chen Qi <Qi.Chen@windriver.com>
>
> dbus-native depends on libxau-native and libxdmcp-native, so
> add these dependencies to it.

It shouldn't because we're turning off X11 autolaunch.  Clearly that
off switch isn't entirely working, so try passing --without-x in the
native case (which already does --disable-x11-autolaunch).

(also, patches like this are best to oe-core@)

Ross

