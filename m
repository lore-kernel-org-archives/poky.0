Return-Path: <kpa_info@yahoo.fr>
Received: from nm12.bullet.mail.ird.yahoo.com (nm12.bullet.mail.ird.yahoo.com
	[77.238.189.65])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 22881E00723
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 08:40:33 -0700 (PDT)
Received: from [77.238.189.234] by nm12.bullet.mail.ird.yahoo.com with NNFMP;
	14 Jun 2012 15:40:33 -0000
Received: from [217.146.189.106] by tm15.bullet.mail.ird.yahoo.com with NNFMP;
	14 Jun 2012 15:40:33 -0000
Received: from [127.0.0.1] by smtp122.mail.ird.yahoo.com with NNFMP;
	14 Jun 2012 15:40:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339688433; bh=2Bpk8amGp0atrpRoTVSxlyXK1GDcd+vun0zcT85DNLo=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=2MC2qRgVnLIqDeQtwrubw0C8XwkNvJw2nTa0B9qn4QQBw2rI4LBok791Tmcpt0OIIdYosRZ7RS2OgFMNWNbMX4q/KIEmse/JeFtXHi3NTj0sdS55P/DqkVRF4rZgIr6qe84JCAhND3+4x4fq1zuOxEguRyRSJfpBi6JeHt7AWfo=
X-Yahoo-Newman-Id: 97309.41283.bm@smtp122.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: q59avwgVM1mMrETnwxAhy7_T_ogcBDqc6A8bzn1lgl4PzoK
	y_zTe.Z60LuseGwzp1etdcolrbY51H0iF4aIZznkWtBedawVT6Q1jJeYW7uV
	Miis7z4Jx2Ag_atQViSX4jEM31KtWtI0bEtPaXn.8MJjlex8ZeB2dfjrXML.
	hSTCfWy6Vrn8gkWcaLkSoRQABENkZYptqAuUxFh8Z8JJmfBS5EwL5zsb.URA
	PI3KjeiNj3bTBcbr0JNuTF8Sq.6OTEvhwv63Mt7qCEY1HIQWkjLK1sg.R5rO
	TCyC7xRDUjRDQb1AzdvqqCnfnix7Fxe_6rUymDtfjbxEgabxFH3H5xR7j6AS
	ZA5fbfcjg.h6rm9VHsuqK1uh1o_hjLJWdx9Y.QxtA_xsJOvDs_V8EmIdJ4A- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp122.mail.ird.yahoo.com with SMTP; 14 Jun 2012 08:40:32 -0700 PDT
Message-ID: <4FDA05EC.5090006@yahoo.fr>
Date: Thu, 14 Jun 2012 17:40:28 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <4FD731A1.6020503@yahoo.fr>
	<CAK18fxGPgrxmXoJ5Wf4s_-2C8Bpnv-xetUBSHXsRVQi+VHheYQ@mail.gmail.com>
In-Reply-To: <CAK18fxGPgrxmXoJ5Wf4s_-2C8Bpnv-xetUBSHXsRVQi+VHheYQ@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: How to set root password
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
X-List-Received-Date: Thu, 14 Jun 2012 15:40:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2012 09:06 AM, Andrei Gherzan wrote:
> You can find your answer in these places:
>
> core-image.bbclass - at the end of this file
> zap_root_password () - from image.bbclass
>

I could see that if debug-tweaks is in IMAGE_FEATURES the root password 
is set to *, but we would like to set a real password.

Do we have to generate a password hash and put it in /etc/passwd ?

Patrick

