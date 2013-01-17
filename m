Return-Path: <wayne.tams@simpleaudio.com>
Received: from grape.ukhost4u.com (grape.ukhost4u.com [188.64.188.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E82DE006D7
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 06:26:24 -0800 (PST)
Received: from [217.43.209.136] (port=58595 helo=[192.168.1.64])
	by grape.ukhost4u.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.80) (envelope-from <wayne.tams@simpleaudio.com>)
	id 1TvqQ9-0007HG-2E; Thu, 17 Jan 2013 14:26:21 +0000
Message-ID: <50F80A0D.2060806@simpleaudio.com>
Date: Thu, 17 Jan 2013 14:26:21 +0000
From: Wayne Tams <wayne.tams@simpleaudio.com>
Organization: Simple Audio
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <50F7CFDA.6090505@simpleaudio.com>
	<CAJTo0Lay83xOxnhUAUmb8bS+igk=woeMCboXR+S+VeTHYY61Fg@mail.gmail.com>
	<50F80088.4090809@simpleaudio.com>
	<CAJTo0LYFnrkk-WaMzAWARQP0jTZqt08mFdu7Jk08bED+m==1HQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYFnrkk-WaMzAWARQP0jTZqt08mFdu7Jk08bED+m==1HQ@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - grape.ukhost4u.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - simpleaudio.com
X-Get-Message-Sender-Via: grape.ukhost4u.com: authenticated_id:
	wayne.tams+simpleaudio.com/only user confirmed/virtual account
	not confirmed
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: poky@yoctoproject.org
Subject: Re: gst-rtsp not building
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
X-List-Received-Date: Thu, 17 Jan 2013 14:26:24 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/01/13 14:04, Burton, Ross wrote:
> On 17 January 2013 13:45, Wayne Tams <wayne.tams@simpleaudio.com> wrote:
>> Some extra debug information here from insane.bbclass.
>>
>> NOTE: Checking autotools environment for common misconfiguration
>> cc1: warning: include location "/usr/include/python2.6" is unsafe for
>> cross-compilation [-Wpoison-system-directories]
>>
>> ERROR: This autoconf log indicates errors, it looked at host include and/or
>> library paths while determining system capabilities.
> Oh, if it's doing python stuff, try adding inherit pythonnative.
>
> Ross
That looks like that has solved that issue, build completed with a QA 
warning but I will look into this and see what is up.

WARNING: QA Issue: gst-rtsp: Files/directories were installed but not 
shipped
   /usr/share
   /usr/share/vala
   /usr/share/vala/vapi
   /usr/share/vala/vapi/gst-rtsp-server-0.10.vapi
   /usr/share/vala/vapi/gst-rtsp-server-0.10.deps

Thanks for the assistance.

Wayne


