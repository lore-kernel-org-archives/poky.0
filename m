Return-Path: <eric.nelson@boundarydevices.com>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C66E002EB
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 13:53:16 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id un1so6481855pbc.15
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 13:53:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=7FOBzLx4tSgakFPOpObNekrveJsVbrS1OihUyFTZslk=;
	b=DujgO6ch4YIzoWy+8iGjlMOHyXEvtWmuIw0JirbKZZbwUBKmxv/X8XF40/q4fPoIZF
	OYqa3EpxSFA38x2R5N6sYQm0jRi9HpEAf/LO67j30UuQGupiystqspyoe4k4C/YhtrPj
	Y4SrhfnGnZ4FkcySRKK6gwe3AiGsmccwp1uYSj70h2K/hc5Wxqk0goLYpnTN/bVBXO4U
	IquoMGHlxy660O+gNDQkzcHCi73LwXjleRxv+TTz8fCL3fCbxwDWMqueV6BKm885TgoH
	7QQnCwNivTsQbO47tSuudDrTU6TaJTxaHzt7aFhSD1BJOTYhECQPihqhdewT5Ecz1KvM
	GPxw==
X-Received: by 10.68.33.10 with SMTP id n10mr34791166pbi.3.1375217595794;
	Tue, 30 Jul 2013 13:53:15 -0700 (PDT)
Received: from [29.6.1.42] ([70.96.116.236])
	by mx.google.com with ESMTPSA id ll5sm7272pab.19.2013.07.30.13.53.13
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 30 Jul 2013 13:53:14 -0700 (PDT)
Message-ID: <51F827B7.7070201@boundarydevices.com>
Date: Tue, 30 Jul 2013 13:53:11 -0700
From: Eric Nelson <eric.nelson@boundarydevices.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1375216507-11576-1-git-send-email-eric.nelson@boundarydevices.com>
	<51F82479.6050909@linux.intel.com>
In-Reply-To: <51F82479.6050909@linux.intel.com>
X-Gm-Message-State: ALoCoQmZi3hI5L5L5LX4MrZXrKrac9Oj2LH1INZNxCG/LWruQZgllBrXbiN2iONcUtBIrQYD+fyO
Cc: poky@yoctoproject.org, otavio@ossystems.com.br
Subject: Re: [PATCH] gst-plugins-gl: add explicit dependency on libpng
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
X-List-Received-Date: Tue, 30 Jul 2013 20:53:16 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Saul,

On 07/30/2013 01:39 PM, Saul Wold wrote:
>
> As this in meta, which is really part of openembedded-core, please send
> it to openembedded-core@list.openembedded.org.
>
> Thanks for the patch
>
> Sau!
>

:) So many mailing lists, so little stack space!

Is there a different git repository I should base the patch against?

Please advise,


Eric


