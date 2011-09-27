Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9338E00707
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 08:48:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 179851660AD5; Tue, 27 Sep 2011 09:48:56 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 339CA1660ACB;
	Tue, 27 Sep 2011 09:48:55 -0600 (MDT)
Message-ID: <4E81F067.1090503@mlbassoc.com>
Date: Tue, 27 Sep 2011 09:48:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Bitbake in a loop
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
X-List-Received-Date: Tue, 27 Sep 2011 15:48:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I typed ^C while bitbake was "preparing runqueue" for a job and it went nuts:

Traceback (most recent call last):
   File "/home/local/poky-multi/bitbake/lib/bb/server/process.py", line 122, in ProcessServer.idle_commands(delay=0.10000000000000001):
                  try:
     >                retval = function(self, data, False)
                      if retval is False:
   File "/home/local/poky-multi/bitbake/lib/bb/cooker.py", line 1069, in buildTargetsIdle(server=<ProcessServer(ProcessServer-1, started)>, rq=<bb.runqueue.RunQueue instance at 
0xda252ec>, abort=False):
                  if abort or self.state == state.stop:
     >                rq.finish_runqueue(True)
                  elif self.state == state.shutdown:
   File "/home/local/poky-multi/bitbake/lib/bb/runqueue.py", line 982, in RunQueue.finish_runqueue(now=True):
              if now:
     >            self.rqexe.finish_now()
              else:
AttributeError: RunQueue instance has no attribute 'rqexe'

This happened repeatedly until I pressed ^C a couple more times.
meta
meta-yocto        = "master:7a0cbe6b0e5185aebabedc515b427994bc2a15dc"

Should I file a bug?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

