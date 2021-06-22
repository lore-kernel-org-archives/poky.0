Received: from mail.engineeredarts.co.uk (mail.engineeredarts.co.uk [62.3.104.53])
 by mx.groups.io with SMTP id smtpd.web12.8399.1624366144191596569
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 05:49:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@engineeredarts.co.uk header.s=modoboa header.b=Z1XvUIer;
 spf=pass (domain: engineeredarts.co.uk, ip: 62.3.104.53, mailfrom: dan@engineeredarts.co.uk)
Received: from localhost (localhost [127.0.0.1])
	by mail.engineeredarts.co.uk (Postfix) with ESMTP id 73E39281BAB
	for <poky@lists.yoctoproject.org>; Tue, 22 Jun 2021 13:49:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=engineeredarts.co.uk; s=modoboa; t=1624366142;
	bh=QhKJQixz+iUEMPuSTWfDrDfXIR4M2sJbSjy1ndN2OAI=;
	h=From:Subject:To:Date:From;
	b=Z1XvUIerJuFp9CWFeGyrhMVMVq9fiAbWZl7Y+djJcnI1o+tJx7t3mv5T+9phPFO9u
	 RP8N/6UvvU06NiLoN343IezAgxsQqtDQeWIKBJCEt6S9k/Wf6AiX+lNrxD3XGcs4g6
	 HVFnS1aDatue2URdWDwevFMVD9lbKWnu+OR+hqQcI4MQfPXJQsZ+aqwp+x9QiFEk37
	 8BUwuHzGho23VLotP7QJH8lRiZcEz8RJlsEg0RmlkAi/qOaeoXZipA4IrNIYvlmHPd
	 /93gsED+sLCoXV0hLS7BgNXqosgVlxsCJurLIi4ZHmbUgg+FYfiC0vX7Qnr0xbkeRg
	 xGN3trLJyWv+w==
X-Virus-Scanned: Debian amavisd-new at mail.engineeredarts.co.uk
Received: from mail.engineeredarts.co.uk ([127.0.0.1])
	by localhost (mail.engineeredarts.co.uk [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id V892sLCAItgo for <poky@lists.yoctoproject.org>;
	Tue, 22 Jun 2021 13:48:57 +0100 (BST)
Received: from [10.3.2.6] (cpc160893-lutn15-2-0-cust235.9-3.cable.virginm.net [86.16.192.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.engineeredarts.co.uk (Postfix) with ESMTPSA
	for <poky@lists.yoctoproject.org>; Tue, 22 Jun 2021 13:48:57 +0100 (BST)
From: "Daniel Squires" <dan@engineeredarts.co.uk>
Subject: howto run unit tests
To: poky@lists.yoctoproject.org
Message-ID: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
Date: Tue, 22 Jun 2021 13:48:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,
We are trying to run some built binaries as a task in a recipe as a part 
of unit testing. This can potentially get complicated (though I feel it 
could/should be abstracted away) as it may need to take care of 
architecture differences between the host and the build target but for 
now we are happy to just run for the cases where these match, and 
possibly later look at using qemu.
We are struggling to find any examples of this being done in existing 
recipes. We managed to manually run what we want by copying built files 
into the recipe-sysroot directory and using fakechroot but feel there 
must be an existing way to achieve what we want, and that we just 
haven't looked for the right thing.
We have also found some docs re ptest however these seem to all relate 
to running tests on the final resulting image, we wish to be able to run 
some tests before this, on individual package builds as part of CI.
Can anyone give any pointer re this?
Many Thanks

-- 

*Dan Squires*
Developer

www.engineeredarts.co.uk <https://www.engineeredarts.co.uk/>

EA Phone Number+44 (0)1326 378129

RoboThespian FB <https://www.facebook.com/RobotThespian> RoboThespian Twitter <https://twitter.com/robothespian> EA YouTube <http://youtube.com/EngineeredArts>
Engineered Arts Logo <https://www.engineeredarts.co.uk/>
*

Engineered Arts Ltd *
E1-E3 Church View Business Park,
Bickland Water Road,
Falmouth Cornwall,
TR11 4FZ
United Kingdom

Subscribe to Mailing List <https://www.engineeredarts.co.uk/mailing-list/>

