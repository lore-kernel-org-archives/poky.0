Return-Path: <kpa_info@yahoo.fr>
Received: from nm4-vm0.bullet.mail.ird.yahoo.com
	(nm4-vm0.bullet.mail.ird.yahoo.com [77.238.189.211])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 08B8FE00747
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 05:10:12 -0700 (PDT)
Received: from [77.238.189.230] by nm4.bullet.mail.ird.yahoo.com with NNFMP;
	12 Jun 2012 12:10:11 -0000
Received: from [217.146.189.67] by tm11.bullet.mail.ird.yahoo.com with NNFMP;
	12 Jun 2012 12:10:11 -0000
Received: from [127.0.0.1] by smtp147.mail.ird.yahoo.com with NNFMP;
	12 Jun 2012 12:10:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339503011; bh=KXPYqWIeJrJNHeb/Jco5p9NwmG1tDoT9eoK3iWuzUmY=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=2C4xvRTMXIhDjGoHrjswMlbKFIbLbB/ad70nznVdG7oJM1hznndsxZLUlm0pb16FEeQ2aUgOY1XnFPV9f6heh56sixLB79qrtUV7rL1UYmlKWCCZI3WIbSQ5A1WljN8vo7kujRCICG25v3jMl5lYBmPDzDNCir2JycdBPkocly8=
X-Yahoo-Newman-Id: 590135.21133.bm@smtp147.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: IrR_INMVM1n9ASnmd7OUvyg7z_Xt2nU75y85sF8Vu6AQbM4
	TTQfwSq1Sx5LYDGvDvrcpaMjgRLznUoaHdYz9dQtWdzO3RBuxZ7tAIQw67t.
	87IM56nYeYfQKEKl8qfyfpKCldEJhpuXZxE0H1nEYqOvXYhb2cyTPHh8a7vQ
	ygNJDcZ7VkybaSgVd37lxp1sY8nt.UqKuWH4dNnoKHeKzqitynzbC_4V932K
	mzTHEo.U5zKuY_miTMFHXBXwv2YdWFVdcb3m8a_N7B0.KG7X6MTOgXoPHc0P
	TBZsD.5VNwbrOKwLw.uNDE85hy4i9L9KMiQCYggK7RHFVUsqOOQIqWWOotPk
	3dHW09KJuIhPdupe8onVRCAD_e7jkUWASwaK6SKjBocL9VJ.OR68s9ILC755
	.f2a.Rmz7nyNsYs6z_MK_nHkP0jSaoVZktpP5JRZCcSgO3WPPiEeUX5gKJ2o
	mhVuNVZ3b2_FODmnJ8DFa_SbTlxgBqmnSkpA3hFyWTzQacVAhmJ.jdlzRWzK
	jGoe2f5slM28_QvLC0DcR
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp147.mail.ird.yahoo.com with SMTP; 12 Jun 2012 05:10:11 -0700 PDT
Message-ID: <4FD731A1.6020503@yahoo.fr>
Date: Tue, 12 Jun 2012 14:10:09 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: How to set root password
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
X-List-Received-Date: Tue, 12 Jun 2012 12:10:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear all,

How could I set the root password on my own images ?
I have found this post  on the FAQ but no answer...
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password

Any help is welcome !

Patrick

