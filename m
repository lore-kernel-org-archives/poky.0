Return-Path: <wayne.tams@simpleaudio.com>
Received: from grape.ukhost4u.com (grape.ukhost4u.com [188.64.188.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50A41E00724
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 07:00:30 -0800 (PST)
Received: from [213.123.233.22] (port=58649 helo=[10.7.0.56])
	by grape.ukhost4u.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.80) (envelope-from <wayne.tams@simpleaudio.com>)
	id 1Tvqx8-0003o3-AH; Thu, 17 Jan 2013 15:00:26 +0000
Message-ID: <50F81209.2090509@simpleaudio.com>
Date: Thu, 17 Jan 2013 15:00:25 +0000
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
	<50F80A0D.2060806@simpleaudio.com>
	<CAJTo0LbSR=sA2ayjNigSR2knATx4RDXFmo20sf5sCkvd87EscQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbSR=sA2ayjNigSR2knATx4RDXFmo20sf5sCkvd87EscQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 17 Jan 2013 15:00:30 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/01/13 14:37, Burton, Ross wrote:
> Hi Wayne,
>
> On 17 January 2013 14:26, Wayne Tams <wayne.tams@simpleaudio.com> wrote:
>> That looks like that has solved that issue, build completed with a QA
>> warning but I will look into this and see what is up.
>>
>> WARNING: QA Issue: gst-rtsp: Files/directories were installed but not
>> shipped
>>    /usr/share
>>    /usr/share/vala
>>    /usr/share/vala/vapi
>>    /usr/share/vala/vapi/gst-rtsp-server-0.10.vapi
>>    /usr/share/vala/vapi/gst-rtsp-server-0.10.deps
> Excellent!  Those files can be added to the -dev package.
>
> Can you submit your fixed recipe to meta-multimedia (in meta-oe), or
> mail it to me and I can do that for you?
>
> Cheers,
> Ross
Ok no problem, I just got to tidy some things up first as 
gst-rtsp_0.10.8 needs patched to support latest autotools. INCLUDES 
changes to AM_CPPFLAGS.

Wayne

