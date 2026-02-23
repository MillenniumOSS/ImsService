.class public Lcom/mediatek/ims/RttEmcGuardTimerUtil;
.super Ljava/lang/Object;
.source "RttEmcGuardTimerUtil.java"


# static fields
.field private static final INTENT_RTT_EMC_GUARD_TIMER_180:Ljava/lang/String; = "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

.field private static final TAG:Ljava/lang/String; = "RttEmcGuardTimerUtil"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDuringRttGuardDuration:Z

.field private mIsRegisteredReceiver:Z

.field private mIsRttEmcGuardTimerSupported:Z

.field private mPhoneId:I

.field private mRttEmcIntent:Landroid/app/PendingIntent;

.field private mRttReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fputmRttEmcIntent(Lcom/mediatek/ims/RttEmcGuardTimerUtil;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDuringGuardTimer(Lcom/mediatek/ims/RttEmcGuardTimerUtil;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 59
    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 60
    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mPhoneId:I

    .line 67
    new-instance v0, Lcom/mediatek/ims/RttEmcGuardTimerUtil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil$1;-><init>(Lcom/mediatek/ims/RttEmcGuardTimerUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mPhoneId:I

    .line 65
    return-void
.end method

.method private getReceiver()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    return v0
.end method

.method private isDuringGuardTimer()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    return v0
.end method

.method private isRttEmcCarrierSupport()Z
    .locals 6

    .line 157
    iget v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 159
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 160
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 161
    .local v1, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    const-string v3, "RttEmcGuardTimerUtil"

    if-nez v1, :cond_0

    .line 162
    const-string v4, "cacheCarrierConfiguration: No carrier config service found."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 166
    :cond_0
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 167
    .local v4, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v4, :cond_1

    .line 168
    const-string v5, "cacheCarrierConfiguration: Empty carrier config."

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v2

    .line 172
    :cond_1
    nop

    .line 173
    const-string v2, "mtk_emc_rtt_guard_timer_bool"

    invoke-virtual {v4, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 174
    iget-boolean v2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    return v2
.end method

.method private registerRttReceiver()V
    .locals 4

    .line 83
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "registerRttReceiver"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method private setDuringGuardTimer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 188
    iput-boolean p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 189
    return-void
.end method

.method private setReceiver(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    .line 181
    return-void
.end method

.method private unregisterRttReceiver()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v0

    const-string v1, "RttEmcGuardTimerUtil"

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "unregisterRttReceiver"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setReceiver(Z)V

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "UnregisterRttReciever: No active reciever"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void
.end method


# virtual methods
.method public checkIncomingCallInRttEmcGuardTime()Z
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIncomingCallInRttEmcGuardTime mDuringRttGuardDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->isDuringGuardTimer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    return v0
.end method

.method public disposeRttEmcGuardTimer()V
    .locals 2

    .line 79
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "disposeRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->unregisterRttReceiver()V

    .line 81
    return-void
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 192
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 193
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 194
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 195
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 197
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubIdUsingPhoneId]  subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RttEmcGuardTimerUtil"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1
.end method

.method public setRttEmcGuardTimerSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 155
    return-void
.end method

.method public startRttEmcGuardTimer()V
    .locals 8

    .line 114
    const-string v0, "startRttEmcGuardTimer"

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "startRttEmcGuardTimer: mContext == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->isRttEmcCarrierSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 120
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    if-nez v0, :cond_1

    .line 121
    const-string v0, "startRttEmcGuardTimer: Current carrier doesn\'t support RTT EMC guard timer, just return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRttEmcGuardTimer , mIsRegisteredReceiver :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mIsRttEmcGuardTimerSupported : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRttEmcGuardTimer , mIsRegisteredReceiver :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 134
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->registerRttReceiver()V

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setReceiver(Z)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Registered reciver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 146
    const v3, 0x2bf20

    .line 147
    .local v3, "delay":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRttEmcGuardTimer: delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 149
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRttEmcGuardTimer: delay = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " started"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 139
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "delay":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRttEmcGuardTimer , mIsRttEmcGuardTimerSupported :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public stopRttEmcGuardTimer()V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRttEmcGuardTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "stopRttEmcGuardTimer, cancel timer"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->disposeRttEmcGuardTimer()V

    .line 107
    :cond_0
    return-void
.end method
