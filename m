Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.14301.1667438127808751437
 for <poky@lists.yoctoproject.org>;
 Wed, 02 Nov 2022 18:15:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=O1h3PEnq;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1667438128;
  x=1698974128;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=v4RMgIqEvICJPgBbdhWfZDiGm01bZtJAX/VvMJ8MqSY=;
  b=O1h3PEnqtmUGtTxyIFmeY6GCcq0b7sMY3fHmA8BKgdEK/TMD3Pw4JWZb
   izcvXMYtpf4RMksAog4f472qTOYEBT/UOJcdcUY+PP84FTZ2z7vy0t72s
   luk6f3OIB+XdAJZoFtx5q7VjRC3DBl0I9Zo2nICJ+bvT33NI3i5WE6/w3
   sLMOuVI9KmAYlhEmtf8c1rFjcpTASAOUUQC8Q5BKIsgZMkT6K5bh444fl
   +5Wu2ZOqM0LkZF8iKk1FUOair14JyzDIlMXdNAhvWUrmrLUn5NRE906RW
   HfZC/4cHcBD7WD36ecF5KUd5NphoQCvXlog1XAt/TW8bl0UY5alEUGMfi
   Q==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: No poky on lore.kernel.org?
Thread-Topic: No poky on lore.kernel.org?
Thread-Index: AdjvIb8bHZJrEc9iQzOWh/r3ScHnwg==
Date: Thu, 3 Nov 2022 01:15:24 +0000
Message-ID: <892dcabfb09d4ec283fb25acacd4eff1@axis.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is there any reason poky@lists.yoctoproject.org is not on lore.kernel.org,=
=20
or was it just forgotten?

//Peter

