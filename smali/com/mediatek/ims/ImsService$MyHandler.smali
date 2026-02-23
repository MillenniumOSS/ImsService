.class Lcom/mediatek/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field mSocketId:I

.field private slotTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsService;I)V
    .locals 1
    .param p2, "socketId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2407
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2408
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 2401
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    .line 2409
    iput p2, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] handleMessage(), "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    .line 2411
    return-void
.end method

.method private isRttSupported(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 3393
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3394
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v1

    return v1
.end method

.method private setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 8
    .param p1, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I

    .line 3368
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3369
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->isRttSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3370
    return-void

    .line 3372
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rtt_calling_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3374
    .local v1, "isRttEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-static {v4, v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mgetBooleanFromCarrierConfig(Lcom/mediatek/ims/ImsService;ILjava/lang/String;)Z

    move-result v4

    .line 3376
    .local v4, "isRttAlwaysOnCarrierConfig":Z
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRttEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CarrierConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3379
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3380
    .end local v1    # "isRttEnabled":Z
    .local v2, "isRttEnabled":Z
    :cond_3
    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    .line 3381
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v5, "setRttModeForIncomingCall: mode = 2"

    invoke-static {v3, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3382
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-interface {v3, v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    goto :goto_2

    .line 3384
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v6, "setRttModeForIncomingCall: mode = 0"

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3385
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    invoke-interface {v5, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 3390
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .line 2418
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x3

    const/16 v7, 0x29

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_32

    .line 3354
    :pswitch_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsService;->onHangupAllCall(I)V

    .line 3355
    goto/16 :goto_32

    .line 3316
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3317
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/SipRegInfo;

    .line 3318
    .local v3, "info":Lcom/mediatek/ims/SipRegInfo;
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetSENLOG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3319
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+ESIPREGINFO:*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_0

    .line 3321
    :cond_0
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+ESIPREGINFO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/ims/SipRegInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3323
    :goto_0
    iget v4, v3, Lcom/mediatek/ims/SipRegInfo;->mCseq:I

    if-eq v4, v9, :cond_74

    const-string v4, "incoming"

    iget-object v5, v3, Lcom/mediatek/ims/SipRegInfo;->mDirection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, v3, Lcom/mediatek/ims/SipRegInfo;->mMethod:Ljava/lang/String;

    if-eqz v4, :cond_74

    .line 3324
    const-string v4, "REGISTER"

    iget-object v5, v3, Lcom/mediatek/ims/SipRegInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "RE-REGISTER"

    iget-object v5, v3, Lcom/mediatek/ims/SipRegInfo;->mMethod:Ljava/lang/String;

    .line 3325
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3343
    :cond_1
    const-string v4, "DE-REGISTER"

    iget-object v5, v3, Lcom/mediatek/ims/SipRegInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 3344
    iget v4, v3, Lcom/mediatek/ims/SipRegInfo;->mAccountId:I

    if-nez v4, :cond_2

    .line 3345
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMethod(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v4, v5

    goto/16 :goto_32

    .line 3347
    :cond_2
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccMethod(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v4, v5

    goto/16 :goto_32

    .line 3326
    :cond_3
    :goto_1
    iget v4, v3, Lcom/mediatek/ims/SipRegInfo;->mAccountId:I

    if-nez v4, :cond_4

    .line 3327
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMethod(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v4, v5

    .line 3328
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmCseq(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget v6, v3, Lcom/mediatek/ims/SipRegInfo;->mCseq:I

    aput v6, v4, v5

    .line 3329
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmResponseCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget v6, v3, Lcom/mediatek/ims/SipRegInfo;->mResponseCode:I

    aput v6, v4, v5

    .line 3330
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmResponsePhrase(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v3, Lcom/mediatek/ims/SipRegInfo;->mReasonPhrase:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 3331
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmReasonHeaderCause(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget v6, v3, Lcom/mediatek/ims/SipRegInfo;->mReasonCause:I

    aput v6, v4, v5

    .line 3332
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmReasonHeaderText(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v3, Lcom/mediatek/ims/SipRegInfo;->mReasonText:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 3333
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmCallId(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v3, Lcom/mediatek/ims/SipRegInfo;->mCallId:Ljava/lang/String;

    aput-object v6, v4, v5

    goto/16 :goto_32

    .line 3335
    :cond_4
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccMethod(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v4, v5

    .line 3336
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccCseq(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget v6, v3, Lcom/mediatek/ims/SipRegInfo;->mCseq:I

    aput v6, v4, v5

    .line 3337
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccResponseCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget v6, v3, Lcom/mediatek/ims/SipRegInfo;->mResponseCode:I

    aput v6, v4, v5

    .line 3338
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccResponsePhrase(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v3, Lcom/mediatek/ims/SipRegInfo;->mReasonPhrase:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 3339
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccReasonHeaderCause(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget v6, v3, Lcom/mediatek/ims/SipRegInfo;->mReasonCause:I

    aput v6, v4, v5

    .line 3340
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccReasonHeaderText(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v3, Lcom/mediatek/ims/SipRegInfo;->mReasonText:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 3341
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmEccCallId(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v3, Lcom/mediatek/ims/SipRegInfo;->mCallId:Ljava/lang/String;

    aput-object v6, v4, v5

    goto/16 :goto_32

    .line 3032
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "info":Lcom/mediatek/ims/SipRegInfo;
    :pswitch_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_CC_CAPABILITY_CHANGE phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3033
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationCapabilityChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3034
    goto/16 :goto_32

    .line 3300
    :pswitch_4
    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3301
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3305
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mcheckVoWiFiDeregisterStatus(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3306
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_CHECK_VOWIFI_REGISTRATION rechecking vowifi registration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mloge(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3308
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    .line 3309
    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3308
    invoke-interface {v0, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    goto/16 :goto_32

    .line 3311
    :cond_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_CHECK_VOWIFI_REGISTRATION vowifi registration check pass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3313
    goto/16 :goto_32

    .line 2574
    :pswitch_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+EIMSUI time out:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlogi(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2576
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-nez v0, :cond_74

    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-ne v0, v13, :cond_74

    .line 2578
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v0, v3

    .line 2579
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v0, v3

    .line 2580
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsPdnRat(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v9, v0, v3

    .line 2581
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v9, v0, v3

    .line 2582
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationStateChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2583
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationCapabilityChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2584
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 2586
    .local v0, "oemPlugin2":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v0, :cond_7

    .line 2587
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_2

    .line 2588
    :cond_7
    nop

    :goto_2
    nop

    .line 2589
    .local v11, "imsRegOemPlugin2":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v11, :cond_8

    .line 2590
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-interface {v11, v3, v4, v14}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2593
    .end local v0    # "oemPlugin2":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v11    # "imsRegOemPlugin2":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_8
    goto/16 :goto_32

    .line 2541
    :pswitch_6
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2542
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2544
    :cond_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2545
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v14

    if-eq v3, v13, :cond_a

    .line 2546
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+EIMSUI flag is not 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlogi(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2547
    return-void

    .line 2548
    :cond_a
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v3, v3, v4

    if-nez v3, :cond_b

    .line 2549
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+EIMSUI ims already reg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlogi(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2550
    return-void

    .line 2552
    :cond_b
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v3, v4

    .line 2553
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v3, v4

    .line 2554
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    or-int/2addr v5, v13

    aput v5, v3, v4

    .line 2555
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsPdnRat(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v3, v4

    .line 2556
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v3, v4

    .line 2557
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+EIMSUI Reg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2558
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationStateChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2559
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationCapabilityChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2560
    const/4 v3, 0x0

    .line 2561
    .local v3, "isWfc":Z
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v4

    .line 2563
    .local v4, "oemPlugin1":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v4, :cond_c

    .line 2564
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_3

    .line 2565
    :cond_c
    nop

    :goto_3
    nop

    .line 2566
    .local v11, "imsRegOemPlugin1":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v11, :cond_d

    .line 2567
    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v8

    invoke-interface {v11, v5, v6, v3}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2570
    :cond_d
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v1, v5, v6, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2572
    goto/16 :goto_32

    .line 3056
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "isWfc":Z
    .end local v4    # "oemPlugin1":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v11    # "imsRegOemPlugin1":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :pswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3057
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/ImsRegInfo;

    .line 3058
    .local v3, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInd(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ImsRegInfo;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v3, v4, v5

    .line 3059
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v4, v3, v11, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyImsRegInd(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    .line 3060
    goto/16 :goto_32

    .line 2646
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "info":Lcom/mediatek/ims/ImsRegInfo;
    :pswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2647
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2648
    .local v3, "incomingCallInfo":[Ljava/lang/String;
    aget-object v4, v3, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2649
    .local v4, "type":I
    const/16 v5, 0x64

    if-ne v4, v5, :cond_74

    .line 2650
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mhandleImsStkCall(Lcom/mediatek/ims/ImsService;I[Ljava/lang/String;)V

    goto/16 :goto_32

    .line 3038
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "incomingCallInfo":[Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3039
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_f

    .line 3040
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_e

    .line 3041
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v14

    .line 3042
    .local v3, "vops":I
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EVENT_VOPS_STATUS_IND, vops = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3043
    .end local v3    # "vops":I
    goto/16 :goto_32

    .line 3044
    :cond_e
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EVENT_VOPS_STATUS_IND, ar.result is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mloge(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 3047
    :cond_f
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EVENT_VOPS_STATUS_IND, ar is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mloge(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3049
    goto/16 :goto_32

    .line 3052
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->notifyImsServiceReady()V

    .line 3053
    goto/16 :goto_32

    .line 3018
    :pswitch_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mhandleNewCdmaSms(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z

    move-result v0

    if-nez v0, :cond_74

    .line 3019
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v14, v12}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    goto/16 :goto_32

    .line 3005
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3006
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_74

    .line 3007
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3008
    .local v3, "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EVENT_IMS_SMS_NEW_SMS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3009
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 3010
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 3013
    .end local v3    # "pdu":[B
    :cond_10
    goto/16 :goto_32

    .line 2993
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2994
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_74

    .line 2995
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 2996
    .restart local v3    # "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EVENT_IMS_SMS_STATUS_REPORT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2997
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2998
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    .line 3001
    .end local v3    # "pdu":[B
    :cond_11
    goto/16 :goto_32

    .line 3026
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_UT_CAPABILITY_CHANGE phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3027
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationCapabilityChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3028
    goto/16 :goto_32

    .line 2951
    :pswitch_f
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2952
    .local v0, "phone_id":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 2954
    .local v3, "token":I
    const/4 v4, 0x0

    .line 2955
    .local v4, "messageRef":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2957
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_12

    .line 2958
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/ims/MtkSmsResponse;

    iget v4, v6, Lcom/mediatek/ims/MtkSmsResponse;->mMessageRef:I

    goto :goto_4

    .line 2960
    :cond_12
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_SEND_SMS_DONE MtkSmsResponse was null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2963
    :goto_4
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_13

    .line 2964
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_SEND_SMS_DONE SMS send complete, messageRef: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2965
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 2966
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v6, v3, v4, v13, v14}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    goto :goto_6

    .line 2971
    :cond_13
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_SEND_SMS_DONE SMS send failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2972
    const/4 v6, 0x2

    .line 2973
    .local v6, "status":I
    const/4 v7, 0x1

    .line 2974
    .local v7, "reason":I
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_14

    .line 2980
    const/4 v6, 0x4

    goto :goto_5

    .line 2981
    :cond_14
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_15

    .line 2983
    const/4 v7, 0x6

    .line 2985
    :cond_15
    :goto_5
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 2986
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetmMmTelFeatureCallback()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v8, v3, v4, v6, v7}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    .line 2991
    .end local v0    # "phone_id":I
    .end local v3    # "token":I
    .end local v4    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    :cond_16
    :goto_6
    goto/16 :goto_32

    .line 2903
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_INIT_CALL_SESSION_PROXY Start init call session proxy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2905
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2906
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "callId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2907
    .local v3, "callId":Ljava/lang/String;
    const-string v4, "phoneId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2908
    .local v4, "phoneId":I
    const-string v5, "seqNum"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2909
    .local v5, "seqNum":I
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6, v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mcheckIfClearUnclosedPendingMT(Lcom/mediatek/ims/ImsService;Ljava/lang/String;I)V

    .line 2910
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    new-instance v15, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v16

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsCallProfile(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    aget-object v17, v7, v4

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v20, v8, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    aget-object v21, v8, v4

    const/16 v18, 0x0

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v19, v7

    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "phoneId":I
    .local v22, "callId":Ljava/lang/String;
    .local v23, "phoneId":I
    invoke-direct/range {v15 .. v23}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    aput-object v15, v6, v23

    .line 2914
    new-instance v15, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v16

    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsCallProfile(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    aget-object v17, v3, v23

    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v20, v4, v23

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    aget-object v21, v4, v23

    move-object/from16 v19, v3

    invoke-direct/range {v15 .. v23}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2918
    .local v15, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v3

    aget-object v3, v3, v23

    invoke-virtual {v3, v15}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2919
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v3

    aget-object v3, v3, v23

    invoke-virtual {v15, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 2921
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMtkImsCallSessionProxy(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v3

    .line 2922
    invoke-virtual {v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    aget-object v6, v6, v23

    .line 2921
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsMTredirect(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_17

    .line 2926
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v3

    aget-object v3, v3, v23

    invoke-virtual {v3, v12}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setImsCallMode(I)V

    .line 2928
    :cond_17
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    aget-object v3, v3, v23

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, v23

    invoke-interface {v3, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 2929
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    aget-object v3, v3, v23

    .line 2931
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2929
    invoke-interface {v3, v14, v4, v5, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(IIII)V

    .line 2935
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsPendingMTTerminated(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_74

    .line 2937
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "EVENT_INIT_CALL_SESSION_PROXY Start deal with pending 133"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2939
    invoke-virtual {v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 2940
    .local v3, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMtkImsCallSessionProxy(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2941
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMtkImsCallSessionProxy(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    :cond_18
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v4

    aget-object v4, v4, v23

    invoke-virtual {v4}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 2945
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v4

    aget-object v4, v4, v23

    invoke-virtual {v4, v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 2946
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v4

    aput-object v11, v4, v23

    .line 2947
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsPendingMTTerminated(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v4

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v4, v6

    .line 2948
    .end local v3    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    goto/16 :goto_32

    .line 2832
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v5    # "seqNum":I
    .end local v15    # "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    .end local v22    # "callId":Ljava/lang/String;
    .end local v23    # "phoneId":I
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 2833
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v5, v0, v14

    .line 2834
    .local v5, "eccSupport":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EVENT_IMS_SUPPORT_ECC_URC enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2839
    if-nez v5, :cond_19

    .line 2840
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsImsEccSupported(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v4

    and-int/lit8 v6, v6, -0x2

    aput v6, v0, v4

    goto :goto_7

    .line 2841
    :cond_19
    if-ne v5, v13, :cond_1a

    .line 2842
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsImsEccSupported(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v4

    or-int/2addr v6, v13

    aput v6, v0, v4

    goto :goto_7

    .line 2843
    :cond_1a
    if-ne v5, v12, :cond_1b

    .line 2844
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsImsEccSupported(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v4

    and-int/lit8 v6, v6, -0x11

    aput v6, v0, v4

    goto :goto_7

    .line 2845
    :cond_1b
    if-ne v5, v6, :cond_1c

    .line 2846
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsImsEccSupported(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v0, v6

    or-int/2addr v4, v7

    aput v4, v0, v6

    .line 2848
    :cond_1c
    :goto_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmListener(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/HashSet;

    .line 2849
    .local v4, "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    const/4 v0, 0x0

    .line 2850
    .local v0, "resultEvent":I
    if-eqz v4, :cond_74

    .line 2851
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsImsEccSupported(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-lez v6, :cond_1d

    .line 2852
    const/4 v0, 0x2

    move v6, v0

    goto :goto_8

    .line 2855
    :cond_1d
    const/4 v0, 0x4

    move v6, v0

    .line 2858
    .end local v0    # "resultEvent":I
    .local v6, "resultEvent":I
    :goto_8
    monitor-enter v4

    .line 2860
    :try_start_0
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2861
    .local v7, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-interface {v7, v13, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    .end local v7    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_9

    .line 2866
    :cond_1e
    goto :goto_a

    .line 2867
    :catchall_0
    move-exception v0

    goto :goto_b

    .line 2864
    :catch_0
    move-exception v0

    .line 2867
    :goto_a
    :try_start_1
    monitor-exit v4

    goto/16 :goto_32

    :goto_b
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2820
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v5    # "eccSupport":I
    .end local v6    # "resultEvent":I
    :pswitch_12
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 2821
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2822
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2824
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 2825
    .local v4, "exui":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetSENLOG()Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+EIMSXUI XUI_INFO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ImsService"

    aget-object v8, v4, v12

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2826
    :cond_1f
    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v4, v12

    invoke-virtual {v0, v5, v6}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 2828
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "exui":[Ljava/lang/String;
    :cond_20
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v0, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 2829
    goto/16 :goto_32

    .line 2789
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :pswitch_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EVENT_RUN_GBA: Enter messege"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2794
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2795
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    .line 2796
    .local v5, "nafInfoTemp":[Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    .line 2798
    .local v7, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v8, v7, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 2799
    :try_start_2
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_21

    .line 2800
    iput v6, v7, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2801
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "EVENT_RUN_GBA: IMS_SS_CMD_ERROR"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_c

    .line 2803
    :cond_21
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-$$Nest$sfgetSENLOG()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2804
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "EVENT_RUN_GBA: hexkey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v14

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", btid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", keylifetime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2807
    :cond_22
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    aget-object v9, v5, v12

    aget-object v10, v5, v14

    .line 2808
    invoke-static {v10}, Lcom/mediatek/ims/ImsCommonUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v10

    aget-object v6, v5, v6

    invoke-direct {v0, v9, v10, v6}, Lcom/mediatek/gba/NafSessionKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 2810
    .local v0, "nafKey":Lcom/mediatek/gba/NafSessionKey;
    iput-object v0, v7, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    .line 2811
    iput v3, v7, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2812
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "EVENT_RUN_GBA: IMS_SS_CMD_SUCCESS"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2814
    .end local v0    # "nafKey":Lcom/mediatek/gba/NafSessionKey;
    :goto_c
    iget-object v0, v7, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2815
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "EVENT_RUN_GBA: notify result"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2816
    monitor-exit v8

    .line 2817
    goto/16 :goto_32

    .line 2816
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2759
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "nafInfoTemp":[Ljava/lang/String;
    .end local v7    # "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    :pswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2760
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v14

    if-ne v3, v13, :cond_23

    move v3, v13

    goto :goto_d

    :cond_23
    move v3, v14

    .line 2761
    .local v3, "enable":Z
    :goto_d
    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v4

    .line 2762
    .local v4, "simState":I
    if-eq v4, v13, :cond_25

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2763
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    if-gt v5, v9, :cond_24

    goto :goto_e

    .line 2772
    :cond_24
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWaitSubInfoChange(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v5, v6

    goto :goto_f

    .line 2765
    :cond_25
    :goto_e
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegisterSubInfoChange(Lcom/mediatek/ims/ImsService;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 2766
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmSubscriptionsChangedListener(Lcom/mediatek/ims/ImsService;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v6

    .line 2767
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2768
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5, v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fputmRegisterSubInfoChange(Lcom/mediatek/ims/ImsService;Z)V

    .line 2770
    :cond_26
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWaitSubInfoChange(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v5, v6

    .line 2774
    :goto_f
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmVolteEnable(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v3, v5, v6

    .line 2775
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWaitFeatureChange(Lcom/mediatek/ims/ImsService;)I

    move-result v5

    if-nez v5, :cond_27

    .line 2776
    const-string v5, "vendor.ril.imsconfig.force.notify"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2778
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2779
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmFeatureValueReceiver(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2781
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_27
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWaitFeatureChange(Lcom/mediatek/ims/ImsService;)I

    move-result v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    shl-int v7, v13, v7

    or-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fputmWaitFeatureChange(Lcom/mediatek/ims/ImsService;I)V

    .line 2782
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetEnhanced4gLteModeSetting(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2783
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EVENT_IMS_VOLTE_SETTING_URC Volte_Setting_Enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", register:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWaitSubInfoChange(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWaitFeatureChange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWaitFeatureChange(Lcom/mediatek/ims/ImsService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2786
    goto/16 :goto_32

    .line 2747
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "enable":Z
    .end local v4    # "simState":I
    :pswitch_15
    goto/16 :goto_32

    .line 2755
    :pswitch_16
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v13, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2756
    goto/16 :goto_32

    .line 2752
    :pswitch_17
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v14, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2753
    goto/16 :goto_32

    .line 2741
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_DEREGISTERED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2742
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2743
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2744
    goto/16 :goto_32

    .line 2738
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_19
    goto/16 :goto_32

    .line 2706
    :pswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2708
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2710
    .local v3, "eiusd":[Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EVENT_ON_USSI, m = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2712
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v4, v13, v13, v12}, Lcom/mediatek/ims/ImsService;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 2714
    .local v4, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const-string v5, "dialstring"

    invoke-virtual {v4, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2716
    const-string v5, "m"

    aget-object v6, v3, v14

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    const-string v5, "str"

    aget-object v6, v3, v13

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    new-instance v15, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v16

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v20, v6, v7

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v21, v6, v7

    const-string v22, "-1"

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x0

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v23, v6

    .end local v4    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .local v17, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    invoke-direct/range {v15 .. v23}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2729
    .local v15, "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2730
    .local v4, "ussiExtras":Landroid/os/Bundle;
    const-string v5, "android:ussd"

    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2731
    const-string v5, "android:imsCallID"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    const-string v5, "android:imsServiceId"

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2734
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v15, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyIncomingCall(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 2735
    goto/16 :goto_32

    .line 3090
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "eiusd":[Ljava/lang/String;
    .end local v4    # "ussiExtras":Landroid/os/Bundle;
    .end local v15    # "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    .end local v17    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3091
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 3093
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 3096
    .local v4, "rat":I
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v16, v6

    if-nez v15, :cond_4a

    .line 3097
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v15, v12, :cond_29

    .line 3098
    iget-object v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v15}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v15

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v11, v15, v11

    invoke-interface {v11, v13}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getMtkHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v11

    sget-object v15, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_1:Lcom/android/internal/telephony/HalVersion;

    .line 3099
    invoke-virtual {v11, v15}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 3100
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v11

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v11, v15

    goto :goto_10

    .line 3102
    :cond_28
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v11

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v11, v15

    .line 3105
    :cond_29
    :goto_10
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v11

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v11, v11, v15

    if-eqz v11, :cond_2a

    .line 3110
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 3111
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3114
    :cond_2a
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3115
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3118
    :cond_2b
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v7

    .line 3119
    .local v5, "oldImsRegInfo":I
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v11

    .line 3120
    .local v7, "oldImsExtInfo":I
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v15

    .line 3121
    .local v11, "oldImsRegTech":I
    const/4 v15, 0x0

    .line 3123
    .local v15, "needNotify":Z
    const/16 v18, 0x3

    .line 3124
    .local v18, "newImsRegInfo":I
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x3e8

    const/16 v8, 0x3e9

    if-eq v6, v13, :cond_2f

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRcsState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v10

    if-ne v6, v13, :cond_2c

    goto :goto_12

    .line 3126
    :cond_2c
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v8, :cond_2e

    .line 3127
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_2d

    goto :goto_11

    .line 3130
    :cond_2d
    const/4 v6, 0x1

    .end local v18    # "newImsRegInfo":I
    .local v6, "newImsRegInfo":I
    goto :goto_13

    .line 3128
    .end local v6    # "newImsRegInfo":I
    .restart local v18    # "newImsRegInfo":I
    :cond_2e
    :goto_11
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v10

    .end local v18    # "newImsRegInfo":I
    .restart local v6    # "newImsRegInfo":I
    goto :goto_13

    .line 3125
    .end local v6    # "newImsRegInfo":I
    .restart local v18    # "newImsRegInfo":I
    :cond_2f
    :goto_12
    const/4 v6, 0x0

    .line 3133
    .end local v18    # "newImsRegInfo":I
    .restart local v6    # "newImsRegInfo":I
    :goto_13
    const-string v10, "persist.vendor.ims.simulate"

    invoke-static {v10, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v13, :cond_31

    .line 3134
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegistry(Lcom/mediatek/ims/ImsService;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 3135
    move v10, v14

    goto :goto_14

    :cond_30
    move v10, v13

    :goto_14
    move v6, v10

    .line 3136
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "+EIREG Override, newImsRegInfo="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3139
    :cond_31
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3141
    .local v8, "newImsExtInfo":I
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v9, :cond_35

    .line 3142
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x3e9

    if-ne v9, v10, :cond_32

    goto :goto_15

    .line 3151
    :cond_32
    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3152
    const/16 v9, 0xa

    if-ne v4, v9, :cond_33

    .line 3153
    const/4 v4, -0x1

    .line 3155
    :cond_33
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_34

    .line 3156
    const/4 v8, 0x0

    .line 3159
    :cond_34
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsPdnRat(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v4, v9, v10

    goto :goto_17

    .line 3143
    :cond_35
    :goto_15
    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_36

    .line 3144
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsPdnRat(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v10, v13

    goto :goto_16

    .line 3146
    :cond_36
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3148
    :goto_16
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v9, v10

    .line 3149
    const/4 v15, 0x1

    .line 3162
    :goto_17
    const/4 v9, 0x0

    .line 3163
    .local v9, "isVoWiFi":Z
    const/4 v13, -0x1

    if-eq v4, v13, :cond_3d

    const/16 v10, 0xa

    if-ne v4, v10, :cond_37

    goto/16 :goto_19

    .line 3167
    :cond_37
    const/4 v10, 0x1

    if-eq v4, v10, :cond_3c

    const/16 v10, 0xb

    if-ne v4, v10, :cond_38

    const/16 v18, 0x1

    goto :goto_18

    .line 3171
    :cond_38
    const/4 v10, 0x5

    if-ne v4, v10, :cond_39

    .line 3172
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v16, v10, v12

    .line 3173
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v10, v12

    goto/16 :goto_1a

    .line 3174
    :cond_39
    const/4 v10, 0x5

    if-ge v4, v10, :cond_3a

    .line 3175
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v10, v12

    .line 3176
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v10, v12

    goto :goto_1a

    .line 3177
    :cond_3a
    const/16 v10, 0xa

    if-ge v4, v10, :cond_3b

    .line 3178
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v10, v13

    .line 3179
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v10, v13

    .line 3180
    const/4 v9, 0x1

    goto :goto_1a

    .line 3182
    :cond_3b
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v10, v12

    .line 3183
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v10, v12

    goto :goto_1a

    .line 3167
    :cond_3c
    move/from16 v18, v10

    .line 3168
    :goto_18
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v18, v10, v13

    .line 3169
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v10, v13

    .line 3170
    const/4 v9, 0x1

    goto :goto_1a

    .line 3165
    :cond_3d
    :goto_19
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v19, -0x1

    aput v19, v10, v12

    .line 3166
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v10, v12

    .line 3186
    :goto_1a
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v10, v10, v12

    if-nez v10, :cond_40

    if-eqz v15, :cond_3e

    goto :goto_1b

    .line 3252
    :cond_3e
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+EIREG:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", rat = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3253
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v10, v12, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mupdateImsRegistrationRat(Lcom/mediatek/ims/ImsService;II)V

    .line 3254
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v10, v10, v12

    if-nez v10, :cond_3f

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-nez v10, :cond_3f

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-eq v10, v11, :cond_3f

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    const/4 v13, -0x1

    if-eq v10, v13, :cond_3f

    .line 3259
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v10, v12}, Lcom/mediatek/ims/ImsService;->-$$Nest$mforceNotifyImsCapabilityChange(Lcom/mediatek/ims/ImsService;I)V

    move-object/from16 v24, v0

    goto/16 :goto_20

    .line 3254
    :cond_3f
    move-object/from16 v24, v0

    goto/16 :goto_20

    .line 3188
    :cond_40
    :goto_1b
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcHandoverToLteState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v10, v12

    .line 3190
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v6, v10, v12

    .line 3191
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-nez v10, :cond_41

    .line 3192
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v8, v10, v12

    goto :goto_1c

    .line 3194
    :cond_41
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v10, v12

    .line 3196
    :goto_1c
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+EIREG:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Reg-state/ext/tech:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", rat:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3200
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-ne v10, v5, :cond_42

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-ne v10, v7, :cond_42

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-ne v10, v11, :cond_42

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v10, v10, v12

    if-eqz v10, :cond_43

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMethod(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    const/4 v12, 0x1

    if-ne v10, v12, :cond_43

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmResponseCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    const/16 v12, 0xc8

    if-eq v10, v12, :cond_43

    .line 3206
    :cond_42
    const/4 v15, 0x1

    .line 3208
    :cond_43
    if-eqz v15, :cond_49

    .line 3210
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v13, v13, v14

    const/4 v14, 0x0

    invoke-static {v10, v12, v13, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationStateChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3212
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    move-object/from16 v24, v0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .local v24, "ar":Landroid/os/AsyncResult;
    iget v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v13, v0

    invoke-static {v10, v12, v0, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationCapabilityChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3215
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3216
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v10

    .line 3217
    .local v10, "ss":Landroid/telephony/ServiceState;
    if-eqz v10, :cond_46

    .line 3218
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v12

    .line 3219
    .local v12, "dataState":I
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v13

    .line 3220
    .local v13, "dataNetType":I
    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    move/from16 v16, v0

    .end local v0    # "subId":I
    .local v16, "subId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "oldImsRegInfo":I
    .local v19, "oldImsRegInfo":I
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "+EIREG, data="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", dataNetType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3221
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v5

    if-nez v0, :cond_45

    .line 3222
    if-nez v12, :cond_44

    .line 3223
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    move/from16 v20, v6

    .end local v6    # "newImsRegInfo":I
    .local v20, "newImsRegInfo":I
    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v14, v6

    invoke-static {v0, v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_1d

    .line 3225
    .end local v20    # "newImsRegInfo":I
    .restart local v6    # "newImsRegInfo":I
    :cond_44
    move/from16 v20, v6

    .end local v6    # "newImsRegInfo":I
    .restart local v20    # "newImsRegInfo":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_1d

    .line 3228
    .end local v20    # "newImsRegInfo":I
    .restart local v6    # "newImsRegInfo":I
    :cond_45
    move/from16 v20, v6

    .end local v6    # "newImsRegInfo":I
    .restart local v20    # "newImsRegInfo":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v14

    invoke-static {v0, v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    .line 3230
    .end local v12    # "dataState":I
    .end local v13    # "dataNetType":I
    :goto_1d
    goto :goto_1e

    .line 3231
    .end local v16    # "subId":I
    .end local v19    # "oldImsRegInfo":I
    .end local v20    # "newImsRegInfo":I
    .restart local v0    # "subId":I
    .restart local v5    # "oldImsRegInfo":I
    .restart local v6    # "newImsRegInfo":I
    :cond_46
    move/from16 v16, v0

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v0    # "subId":I
    .end local v5    # "oldImsRegInfo":I
    .end local v6    # "newImsRegInfo":I
    .restart local v16    # "subId":I
    .restart local v19    # "oldImsRegInfo":I
    .restart local v20    # "newImsRegInfo":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v12

    invoke-static {v0, v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    .line 3235
    :goto_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 3237
    .local v0, "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v0, :cond_47

    .line 3238
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_1f

    .line 3239
    :cond_47
    const/16 v17, 0x0

    :goto_1f
    move-object/from16 v5, v17

    .line 3240
    .local v5, "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v5, :cond_48

    .line 3241
    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    invoke-interface {v5, v6, v12, v9}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 3243
    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcPdnState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v13, v13, v14

    invoke-interface {v5, v6, v12, v13}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->notifyImsRegStateWithType(III)V

    .line 3248
    :cond_48
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v6, v12, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mupdateImsRegistrationRat(Lcom/mediatek/ims/ImsService;II)V

    .line 3249
    .end local v0    # "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v5    # "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    .end local v10    # "ss":Landroid/telephony/ServiceState;
    .end local v16    # "subId":I
    goto :goto_20

    .line 3208
    .end local v19    # "oldImsRegInfo":I
    .end local v20    # "newImsRegInfo":I
    .end local v24    # "ar":Landroid/os/AsyncResult;
    .local v0, "ar":Landroid/os/AsyncResult;
    .local v5, "oldImsRegInfo":I
    .restart local v6    # "newImsRegInfo":I
    :cond_49
    move-object/from16 v24, v0

    move/from16 v19, v5

    move/from16 v20, v6

    .line 3262
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "oldImsRegInfo":I
    .end local v6    # "newImsRegInfo":I
    .end local v7    # "oldImsExtInfo":I
    .end local v8    # "newImsExtInfo":I
    .end local v9    # "isVoWiFi":Z
    .end local v11    # "oldImsRegTech":I
    .end local v15    # "needNotify":Z
    .restart local v24    # "ar":Landroid/os/AsyncResult;
    :goto_20
    goto/16 :goto_24

    .line 3263
    .end local v24    # "ar":Landroid/os/AsyncResult;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4a
    move-object/from16 v24, v0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v24    # "ar":Landroid/os/AsyncResult;
    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3264
    const/4 v0, 0x3

    .line 3265
    .local v0, "imsEccRegState":I
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4b

    .line 3266
    const/4 v0, 0x2

    .line 3268
    :cond_4b
    const/4 v5, 0x0

    .line 3269
    .local v5, "imsRadioTech":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_51

    const/16 v10, 0xa

    if-ne v4, v10, :cond_4c

    goto :goto_22

    .line 3272
    :cond_4c
    const/4 v6, 0x1

    if-eq v4, v6, :cond_50

    const/16 v10, 0xb

    if-ne v4, v10, :cond_4d

    goto :goto_21

    .line 3274
    :cond_4d
    const/4 v9, 0x5

    if-ne v4, v9, :cond_4e

    .line 3275
    const/4 v5, 0x3

    goto :goto_23

    .line 3276
    :cond_4e
    if-ge v4, v9, :cond_4f

    goto :goto_23

    .line 3278
    :cond_4f
    const/16 v10, 0xa

    if-ge v4, v10, :cond_52

    .line 3279
    const/4 v5, 0x2

    goto :goto_23

    .line 3273
    :cond_50
    :goto_21
    const/4 v5, 0x1

    goto :goto_23

    .line 3271
    :cond_51
    :goto_22
    const/4 v5, -0x1

    .line 3282
    :cond_52
    :goto_23
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+EIREG, imsEccRegState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "imsRadioTech:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3283
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsEccRegState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-ne v6, v0, :cond_53

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsEccRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-eq v6, v5, :cond_54

    .line 3285
    :cond_53
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsEccRegState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v0, v6, v7

    .line 3286
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsEccRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v5, v6, v7

    .line 3287
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7, v0, v5}, Lcom/mediatek/ims/ImsService;->updateImsEccRegstration(III)V

    .line 3293
    .end local v0    # "imsEccRegState":I
    .end local v5    # "imsRadioTech":I
    :cond_54
    :goto_24
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_74

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_74

    .line 3294
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/16 v5, 0x11

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mcheckRttCallType(Lcom/mediatek/ims/ImsService;II)V

    goto/16 :goto_32

    .line 2654
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "rat":I
    .end local v24    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    move/from16 v16, v6

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2655
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 2660
    .local v4, "sipMessage":[Ljava/lang/String;
    if-eqz v4, :cond_74

    .line 2661
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+ESIPCPI Method ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v16

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " response_code ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reason_text ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v22, 0x5

    aget-object v8, v4, v22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2664
    aget-object v6, v4, v16

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2665
    .local v6, "sipMethod":I
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2666
    .local v3, "sipResponseCode":I
    aget-object v7, v4, v22

    .line 2667
    .local v7, "sipReasonText":Ljava/lang/String;
    if-eqz v6, :cond_55

    const/16 v8, 0x9

    if-eq v6, v8, :cond_55

    const/16 v10, 0xa

    if-ne v6, v10, :cond_5d

    .line 2668
    :cond_55
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-$$Nest$mgetOpImsService(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v8

    .line 2669
    .local v8, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    if-eq v9, v12, :cond_57

    if-eqz v8, :cond_56

    .line 2671
    invoke-interface {v8}, Lcom/mediatek/ims/ext/IImsServiceExt;->isWfcRegErrorCauseSupported()Z

    move-result v9

    if-eqz v9, :cond_56

    goto :goto_25

    .line 2700
    :cond_56
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v3, v5, v9

    goto/16 :goto_28

    .line 2672
    :cond_57
    :goto_25
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11, v3, v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mmapToWfcRegErrorCause(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I

    move-result v11

    aput v11, v9, v10

    .line 2674
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$mtriggerImsRegistrationNotify(Lcom/mediatek/ims/ImsService;II)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 2675
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "+ESIPCPI triggerImsRegistrationNotify since no telephony add on"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_27

    .line 2676
    :cond_58
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    const/16 v10, 0x640

    if-ne v9, v10, :cond_5a

    if-nez v6, :cond_5a

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    if-eqz v9, :cond_5a

    .line 2679
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+ESIPCPI L-ePDG-5025 8-13. Received SIP REG 403 response, perform ImsDiscommect flow."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2680
    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    .line 2682
    .local v9, "ret":[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2683
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_26
    array-length v12, v9

    if-ge v11, v12, :cond_59

    .line 2684
    aget v12, v9, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    .line 2686
    .end local v11    # "i":I
    :cond_59
    new-instance v11, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v10, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2687
    .local v11, "arCip":Landroid/os/AsyncResult;
    invoke-virtual {v1, v5, v11}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v12, 0x3e8

    invoke-virtual {v1, v5, v12, v13}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2689
    .end local v9    # "ret":[I
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "arCip":Landroid/os/AsyncResult;
    :cond_5a
    :goto_27
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v9

    const/16 v9, 0x6a5

    if-eq v5, v9, :cond_5b

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v9

    const/16 v9, 0x646

    if-ne v5, v9, :cond_5c

    .line 2692
    :cond_5b
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-static {v5, v9, v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationErrorCode(Lcom/mediatek/ims/ImsService;II)V

    .line 2695
    :cond_5c
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-virtual {v5, v9, v10}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCode(II)V

    .line 2696
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "wfcErrorCode"

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRegErrorCode(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2698
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.mediatek.permission.IMS_ERR_NOTIFICATION"

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2703
    .end local v3    # "sipResponseCode":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "sipMethod":I
    .end local v7    # "sipReasonText":Ljava/lang/String;
    .end local v8    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    :cond_5d
    :goto_28
    goto/16 :goto_32

    .line 2616
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "sipMessage":[Ljava/lang/String;
    :pswitch_1d
    goto/16 :goto_32

    .line 2613
    :pswitch_1e
    goto/16 :goto_32

    .line 2597
    :pswitch_1f
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_IMS_ENABLING_URC mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2599
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5e

    .line 2600
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2601
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2602
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2603
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EVENT_IMS_ENABLING_URC broadcast IMS_SERVICE_UP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2605
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2607
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2609
    :cond_5f
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v0, v3

    .line 2610
    goto/16 :goto_32

    .line 2873
    :pswitch_20
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2874
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2875
    .local v3, "callInfo":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2876
    .local v4, "msgType":I
    const/16 v18, 0x1

    aget-object v5, v3, v18

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2878
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EVENT_CALL_INFO_INDICATION, msgType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2880
    const/16 v5, 0x85

    if-ne v4, v5, :cond_74

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMTCallId(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_74

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMTCallId(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    const/16 v23, 0x0

    aget-object v6, v3, v23

    .line 2882
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 2883
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_61

    .line 2884
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EVENT_CALL_INFO_INDICATION handle 133 in ImsService"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2886
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    .line 2887
    invoke-virtual {v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    .line 2888
    .local v5, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMtkImsCallSessionProxy(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2889
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmPendingMtkImsCallSessionProxy(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    :cond_60
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 2892
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v6, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 2893
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmMtkPendingMT(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v8, v6, v7

    .line 2894
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsPendingMTTerminated(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v23, 0x0

    aput-boolean v23, v6, v7

    .line 2895
    .end local v5    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    goto/16 :goto_32

    .line 2896
    :cond_61
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsPendingMTTerminated(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput-boolean v18, v5, v6

    goto/16 :goto_32

    .line 2630
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "callInfo":[Ljava/lang/String;
    .end local v4    # "msgType":I
    :pswitch_21
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2631
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmIsMTredirect(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_62

    .line 2632
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$msendIncomingCallIndication(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    goto :goto_29

    .line 2634
    :cond_62
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$fputmRedirectIncomingAsyncResult(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)V

    .line 2635
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fputmRedirectIncomingSocketId(Lcom/mediatek/ims/ImsService;I)V

    .line 2637
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRedirectIncomingCall(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    .line 2642
    :goto_29
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRILAdapters(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v4

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-direct {v1, v3, v4}, Lcom/mediatek/ims/ImsService$MyHandler;->setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 2644
    goto/16 :goto_32

    .line 2619
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_22
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EVENT_IMS_DISABLED_URC: mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2620
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v6, 0x1

    invoke-static {v0, v3, v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$mdisableIms(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2621
    goto/16 :goto_32

    .line 2623
    :pswitch_23
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2624
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_74

    .line 2625
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EVENT_SET_IMS_ENABLED_DONE turnOnIms failed, disableIms!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlogw(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2626
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v14, 0x0

    invoke-static {v3, v4, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mdisableIms(Lcom/mediatek/ims/ImsService;IZ)V

    goto/16 :goto_32

    .line 2749
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_24
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mdisableIms(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2750
    goto/16 :goto_32

    .line 2420
    :pswitch_25
    move-object v8, v11

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2421
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/16 v18, 0x1

    aget v3, v3, v18

    .line 2424
    .local v3, "newImsExtInfo":I
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmNotifyUseEireg(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v6, v6, v9

    if-eqz v6, :cond_63

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v9

    const/16 v18, 0x1

    and-int/lit8 v6, v6, 0x1

    and-int/lit8 v9, v3, 0x1

    if-ne v6, v9, :cond_63

    .line 2428
    goto/16 :goto_32

    .line 2431
    :cond_63
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2432
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2434
    :cond_64
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2435
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2452
    :cond_65
    const/4 v5, 0x3

    .line 2453
    .local v5, "newImsRegInfo":I
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    const/16 v23, 0x0

    aget v6, v6, v23

    const/4 v10, 0x1

    if-eq v6, v10, :cond_67

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRcsState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-ne v6, v10, :cond_66

    goto :goto_2a

    .line 2456
    :cond_66
    const/4 v5, 0x1

    goto :goto_2b

    .line 2454
    :cond_67
    :goto_2a
    const/4 v5, 0x0

    .line 2460
    :goto_2b
    const-string v6, "persist.vendor.ims.simulate"

    const/4 v14, 0x0

    invoke-static {v6, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_69

    .line 2461
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegistry(Lcom/mediatek/ims/ImsService;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2462
    const/4 v6, 0x0

    goto :goto_2c

    :cond_68
    const/4 v6, 0x1

    :goto_2c
    move v5, v6

    .line 2463
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+CIREGU Override, newImsRegInfo="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2468
    :cond_69
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    const/16 v23, 0x0

    aget v6, v6, v23

    const/4 v10, 0x1

    if-ne v6, v10, :cond_6b

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    const/4 v13, -0x1

    if-ne v6, v13, :cond_6b

    .line 2470
    and-int/lit8 v6, v3, 0x10

    if-ne v6, v4, :cond_6a

    .line 2471
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v6, v7

    .line 2472
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsPdnRat(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v6, v7

    .line 2473
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v18, v6, v7

    goto :goto_2d

    .line 2476
    :cond_6a
    const/16 v18, 0x1

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v18, v6, v7

    .line 2477
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsPdnRat(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v23, 0x0

    aput v23, v6, v7

    .line 2478
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegTech(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v23, v6, v7

    .line 2483
    :cond_6b
    :goto_2d
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcHandoverToLteState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/16 v18, 0x1

    aput v18, v6, v7

    .line 2486
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+CIREGU:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " -> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2488
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v5, v6, v7

    .line 2489
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    const/4 v14, 0x0

    invoke-static {v6, v7, v9, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationStateChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2492
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-nez v6, :cond_6c

    .line 2493
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v3, v6, v7

    const/4 v14, 0x0

    goto :goto_2e

    .line 2495
    :cond_6c
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v14, 0x0

    aput v14, v6, v7

    .line 2497
    :goto_2e
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    invoke-static {v6, v7, v9, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$mnotifyRegistrationCapabilityChange(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2500
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 2501
    .local v6, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v7

    .line 2502
    .local v7, "ss":Landroid/telephony/ServiceState;
    if-eqz v7, :cond_6f

    .line 2503
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    .line 2504
    .local v9, "dataState":I
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v10

    .line 2505
    .local v10, "dataNetType":I
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->slotTag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "+CIREGU data="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dataNetType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/ims/ImsService;->-$$Nest$mlog(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2506
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v13

    if-nez v11, :cond_6e

    .line 2507
    if-nez v9, :cond_6d

    .line 2508
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v14, v14, v15

    invoke-static {v11, v13, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_2f

    .line 2510
    :cond_6d
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_2f

    .line 2513
    :cond_6e
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v14, v14, v15

    invoke-static {v11, v13, v14}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    .line 2515
    .end local v9    # "dataState":I
    .end local v10    # "dataNetType":I
    :goto_2f
    goto :goto_30

    .line 2516
    :cond_6f
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v13

    invoke-static {v9, v10, v11}, Lcom/mediatek/ims/ImsService;->-$$Nest$msetNotificationVirtual(Lcom/mediatek/ims/ImsService;II)V

    .line 2520
    :goto_30
    const/4 v9, 0x0

    .line 2521
    .local v9, "isVoWiFi":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmRAN(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    if-ne v10, v12, :cond_70

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    const/4 v14, 0x1

    and-int/2addr v10, v14

    if-eq v10, v14, :cond_71

    :cond_70
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsExtInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    and-int/2addr v10, v4

    if-ne v10, v4, :cond_72

    .line 2524
    :cond_71
    const/4 v9, 0x1

    .line 2527
    :cond_72
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v4

    .line 2529
    .local v4, "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v4, :cond_73

    .line 2530
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_31

    .line 2531
    :cond_73
    move-object v11, v8

    :goto_31
    nop

    .line 2532
    .local v11, "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v11, :cond_74

    .line 2533
    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    invoke-interface {v11, v8, v10, v9}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2535
    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmImsRegInfo(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmWfcPdnState(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    invoke-interface {v11, v8, v10, v12}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->notifyImsRegStateWithType(III)V

    .line 3361
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsExtInfo":I
    .end local v4    # "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v5    # "newImsRegInfo":I
    .end local v6    # "subId":I
    .end local v7    # "ss":Landroid/telephony/ServiceState;
    .end local v9    # "isVoWiFi":Z
    .end local v11    # "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_74
    :goto_32
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-$$Nest$mgetOpImsService(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    .line 3362
    .local v0, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v0, :cond_75

    .line 3363
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->-$$Nest$fgetmContext(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 3365
    :cond_75
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_1b
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3e9
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data
.end method
