.class public Lcom/mediatek/ims/ril/MtkRadioExImsIndication;
.super Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;
.source "MtkRadioExImsIndication.java"


# instance fields
.field private mPhoneId:I

.field mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public static synthetic $r8$lambda$dGNQvDgxJY8W1R7RurWqeQUxwyU(Lcom/mediatek/ims/ril/MtkRadioExImsIndication;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->lambda$notifyNtTelephonyEregrtInfoInd$0([I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 73
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 75
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 76
    return-void
.end method

.method private synthetic lambda$notifyNtTelephonyEregrtInfoInd$0([I)V
    .locals 5
    .param p1, "info"    # [I

    .line 593
    nop

    .line 594
    const-string v0, "nothing.radio.ntphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lcom/nothing/telephony/INothingTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nothing/telephony/INothingTelephony;

    move-result-object v0

    .line 595
    .local v0, "ntTelephony":Lcom/nothing/telephony/INothingTelephony;
    if-eqz v0, :cond_0

    .line 596
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v1, "bundleRequest":Landroid/os/Bundle;
    const-string v2, "phoneId"

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    const-string v2, "info"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 600
    :try_start_0
    const-string v2, "notifyERegRT"

    invoke-interface {v0, v2, v1}, Lcom/nothing/telephony/INothingTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_0

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception for notifyERegRT, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkRadioExImsIndication"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v1    # "bundleRequest":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyNtTelephonyEregrtInfoInd([I)V
    .locals 2
    .param p1, "info"    # [I

    .line 592
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/ril/MtkRadioExImsIndication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsIndication$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/ril/MtkRadioExImsIndication;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method


# virtual methods
.method public audioIndication(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I

    .line 352
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 354
    filled-new-array {p2, p3}, [I

    move-result-object v0

    .line 357
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc32

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 364
    :cond_0
    return-void
.end method

.method public callInfoIndication(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "result"    # [Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 849
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    const/16 v2, 0xbd7

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 863
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 865
    :cond_1
    return-void

    .line 850
    :cond_2
    :goto_0
    return-void
.end method

.method public callRatIndication(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "domain"    # I
    .param p3, "rat"    # I

    .line 1172
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1174
    filled-new-array {p2, p3}, [I

    move-result-object v0

    .line 1177
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc38

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1180
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1182
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1184
    :cond_0
    return-void
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 881
    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 885
    const/16 v3, 0xbda

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 889
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 891
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 893
    :cond_0
    return-void
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "msg"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 161
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 164
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2c

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 167
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 168
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 171
    :cond_0
    return-void
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 910
    filled-new-array/range {p2 .. p7}, [Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 914
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 913
    const/16 v3, 0xbd8

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 917
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECONF result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 921
    :cond_0
    return-void
.end method

.method public ectIndication(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "call_id"    # I
    .param p3, "ectResult"    # I
    .param p4, "cause"    # I

    .line 827
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 829
    filled-new-array {p2, p3, p4}, [I

    move-result-object v0

    .line 832
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe6

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 834
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 838
    :cond_0
    return-void
.end method

.method public eregrtInfoInd(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 560
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 563
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->notifyNtTelephonyEregrtInfoInd([I)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "eregrtInfoInd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 572
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 577
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 580
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 583
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 588
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 1329
    const-string v0, "b6191c55369c4d5d70b8158a8e4c34dc461825de"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 1334
    const/4 v0, 0x3

    return v0
.end method

.method public imsBearerInit(I)V
    .locals 4
    .param p1, "type"    # I

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 111
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 114
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbeb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 121
    :cond_0
    return-void
.end method

.method public imsBearerStateNotify(IIILjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "capability"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 89
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "strAid":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "strAction":Ljava/lang/String;
    filled-new-array {v0, v1, v2, p4}, [Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v5, 0xbe9

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 98
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 102
    :cond_0
    return-void
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1236
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p3, p4}, [Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc15

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1242
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1246
    :cond_0
    return-void
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1276
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1278
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc16

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1284
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1289
    :cond_0
    return-void
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1211
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1213
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 1216
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc13

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1219
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1223
    :cond_0
    return-void
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I

    .line 1257
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1259
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {v0, p3, p4}, [I

    move-result-object v0

    .line 1262
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc14

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1265
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1269
    :cond_0
    return-void
.end method

.method public imsConferenceInfoIndication(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "participants"    # [Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;

    .line 958
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 960
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 964
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 966
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsCallSessionProxy$User;-><init>()V

    .line 967
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->user_addr:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 968
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->end_point:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 969
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->entity:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEntity:Ljava/lang/String;

    .line 970
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->display_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    .line 971
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->status:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    .line 972
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 976
    const/16 v3, 0xc11

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 980
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_2

    .line 981
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 982
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 984
    :cond_2
    return-void

    .line 961
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 134
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "phoneId":Ljava/lang/String;
    filled-new-array {v0, p2, p3, p4}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc27

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 145
    :cond_0
    return-void
.end method

.method public imsDialogIndication(I[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "dialogList"    # [Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;

    .line 1022
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1025
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc39

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 1027
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1032
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_UNSOL_IMS_DIALOG_INDICATION dialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->dialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->address:Ljava/lang/String;

    .line 1034
    invoke-static {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1036
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;-><init>()V

    .line 1038
    .local v2, "imsDialog":Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;
    aget-object v3, p2, v1

    iget v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->dialogId:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->dialogId:I

    .line 1039
    aget-object v3, p2, v1

    iget v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->callState:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->callState:I

    .line 1040
    aget-object v3, p2, v1

    iget v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->callType:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->callType:I

    .line 1041
    aget-object v3, p2, v1

    iget-boolean v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->isCallHeld:Z

    iput-boolean v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->isCallHeld:Z

    .line 1042
    aget-object v3, p2, v1

    iget-boolean v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->isPullable:Z

    iput-boolean v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->isPullable:Z

    .line 1043
    aget-object v3, p2, v1

    iget-boolean v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->isMt:Z

    iput-boolean v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->isMt:Z

    .line 1044
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->address:Ljava/lang/String;

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->address:Ljava/lang/String;

    .line 1045
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->remoteAddress:Ljava/lang/String;

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->remoteAddress:Ljava/lang/String;

    .line 1046
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    .end local v2    # "imsDialog":Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1050
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;>;"
    :cond_1
    return-void
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1125
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 1126
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "ptype":Ljava/lang/String;
    .end local p4    # "urcIdx":Ljava/lang/String;
    .end local p5    # "totalUrcCount":Ljava/lang/String;
    .end local p6    # "rawData":Ljava/lang/String;
    .local v1, "callId":Ljava/lang/String;
    .local v2, "ptype":Ljava/lang/String;
    .local v3, "urcIdx":Ljava/lang/String;
    .local v4, "totalUrcCount":Ljava/lang/String;
    .local v5, "rawData":Ljava/lang/String;
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p2

    .line 1129
    .local p2, "ret":[Ljava/lang/String;
    iget-object p3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1130
    invoke-static {p4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1129
    const/16 p5, 0xbe0

    invoke-virtual {p3, p5, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1133
    iget-object p3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object p3, p3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    if-eqz p3, :cond_0

    .line 1134
    iget-object p3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object p3, p3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    new-instance p4, Landroid/os/AsyncResult;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p2, p5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1135
    invoke-virtual {p3, p4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1137
    :cond_0
    return-void
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1079
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_REDIAL_EMERGENCY_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public imsRegFlagInd(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "flag"    # I

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 617
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {p2, v0}, [I

    move-result-object v0

    .line 620
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc3b

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 622
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 624
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 626
    :cond_0
    return-void
.end method

.method public imsRegInfoInd(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 525
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "imsRegInfoInd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 533
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 538
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 541
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 544
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 549
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "report"    # Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;

    .line 498
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 500
    new-instance v2, Lcom/mediatek/ims/ImsRegInfo;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->report_type:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->account_id:I

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->expire_time:I

    iget v6, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->error_code:I

    iget-object v7, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->uri:Ljava/lang/String;

    iget-object v8, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->error_msg:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/ims/ImsRegInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 504
    .local v2, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsRegInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 511
    :cond_0
    return-void
.end method

.method public imsRegistrationInfo(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "registerState"    # I
    .param p3, "capability"    # I

    .line 420
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 422
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {p2, p3, v0}, [I

    move-result-object v0

    .line 424
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe1

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 429
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 431
    :cond_0
    return-void
.end method

.method public imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;
    .param p7, "jitter"    # Ljava/lang/String;
    .param p8, "delay"    # Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 644
    filled-new-array/range {p2 .. p8}, [Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbde

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 650
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 652
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 654
    :cond_0
    return-void
.end method

.method public imsSupportEcc(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 442
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {p2, v0}, [I

    move-result-object v0

    .line 445
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_IMS_ECC_SUPPORT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 453
    :cond_0
    return-void
.end method

.method public incomingCallSipInviteIndication(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 1188
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1189
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    const/16 v3, 0xc3c

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1196
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtSipInviteIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtSipInviteIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1198
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 999
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1000
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "callId":Ljava/lang/String;
    .end local p3    # "ptype":Ljava/lang/String;
    .end local p4    # "urcIdx":Ljava/lang/String;
    .end local p5    # "totalUrcCount":Ljava/lang/String;
    .end local p6    # "rawData":Ljava/lang/String;
    .local v1, "callId":Ljava/lang/String;
    .local v2, "ptype":Ljava/lang/String;
    .local v3, "urcIdx":Ljava/lang/String;
    .local v4, "totalUrcCount":Ljava/lang/String;
    .local v5, "rawData":Ljava/lang/String;
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p2

    .line 1004
    .local p2, "ret":[Ljava/lang/String;
    iget-object p3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1005
    invoke-static {p4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1004
    const/16 p5, 0xc12

    invoke-virtual {p3, p5, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1008
    iget-object p3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object p3, p3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz p3, :cond_0

    .line 1009
    iget-object p3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object p3, p3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance p4, Landroid/os/AsyncResult;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p2, p5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1010
    invoke-virtual {p3, p4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public newSmsEx(I[B)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdu"    # [B

    .line 216
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 218
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc29

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 228
    :cond_0
    return-void
.end method

.method public newSmsStatusReportEx(I[B)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdu"    # [B

    .line 188
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 190
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc28

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 200
    :cond_0
    return-void
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1059
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1062
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2d

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 1064
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1067
    :cond_0
    return-void
.end method

.method public onMDInternetUsageInd(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 792
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "onMDInternetUsage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 799
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 804
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_2

    .line 807
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 809
    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 811
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 814
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public onSsacStatus(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "status"    # [I

    .line 1300
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "onSsacStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1308
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1313
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1316
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1319
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1321
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1324
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public onUssi(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "modeType"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 695
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 697
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p3, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdc

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 702
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 706
    :cond_0
    return-void
.end method

.method public onVolteSubscription(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 714
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 716
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {p2, v0}, [I

    move-result-object v0

    .line 719
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc26

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 726
    :cond_0
    return-void
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 667
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, p3, p4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 672
    const-string v2, "IMS_RILA"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 671
    const/16 v3, 0xbdf

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 675
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 678
    :cond_0
    return-void
.end method

.method public rttCapabilityIndication(IIIIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "localCap"    # I
    .param p4, "remoteCap"    # I
    .param p5, "localStatus"    # I
    .param p6, "remoteStatus"    # I

    .line 301
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 303
    filled-new-array {p2, p3, p4, p5, p6}, [I

    move-result-object v0

    .line 306
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc30

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 313
    :cond_0
    return-void
.end method

.method public rttModifyRequestReceive(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "rttType"    # I

    .line 328
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 330
    filled-new-array {p2, p3}, [I

    move-result-object v0

    .line 333
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc31

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 336
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 340
    :cond_0
    return-void
.end method

.method public rttModifyResponse(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I

    .line 243
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 245
    filled-new-array {p2, p3}, [I

    move-result-object v0

    .line 248
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc2e

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 255
    :cond_0
    return-void
.end method

.method public rttTextReceive(IIILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "strCallId":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "strLength":Ljava/lang/String;
    filled-new-array {v0, v1, p4}, [Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xc2f

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 280
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 284
    :cond_0
    return-void
.end method

.method public sendVopsIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "vops"    # I

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 379
    filled-new-array {p2}, [I

    move-result-object v0

    .line 382
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRILConstants.RIL_UNSOL_VOPS_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 389
    :cond_0
    return-void
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 939
    filled-new-array/range {p2 .. p7}, [Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd9

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 945
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 947
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 949
    :cond_0
    return-void
.end method

.method public sipHeaderReport(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # [Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1148
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc34

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1158
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1162
    :cond_1
    return-void

    .line 1149
    :cond_2
    :goto_0
    return-void
.end method

.method public sipRegInfoInd(III[Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "account_id"    # I
    .param p3, "response_code"    # I
    .param p4, "info"    # [Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 470
    if-eqz p4, :cond_3

    array-length v0, p4

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    move v4, p2

    move v5, p3

    goto :goto_0

    .line 474
    :cond_0
    new-instance v3, Lcom/mediatek/ims/SipRegInfo;

    const/4 v0, 0x0

    aget-object v6, p4, v0

    aget-object v7, p4, v1

    const/4 v0, 0x2

    aget-object v8, p4, v0

    const/4 v0, 0x3

    aget-object v9, p4, v0

    const/4 v0, 0x4

    aget-object v10, p4, v0

    move v4, p2

    move v5, p3

    .end local p2    # "account_id":I
    .end local p3    # "response_code":I
    .local v4, "account_id":I
    .local v5, "response_code":I
    invoke-direct/range {v3 .. v10}, Lcom/mediatek/ims/SipRegInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .local v3, "sipInfo":Lcom/mediatek/ims/SipRegInfo;
    array-length p2, p4

    const/16 p3, 0x9

    if-lt p2, p3, :cond_1

    .line 477
    aget-object p2, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 478
    .local p2, "cseq":I
    const/4 p3, 0x6

    aget-object p3, p4, p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 479
    .local p3, "reasonCause":I
    const/4 v0, 0x7

    aget-object v0, p4, v0

    const/16 v1, 0x8

    aget-object v1, p4, v1

    invoke-virtual {v3, p2, p3, v0, v1}, Lcom/mediatek/ims/SipRegInfo;->setSipRegExInfo(IILjava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local p2    # "cseq":I
    .end local p3    # "reasonCause":I
    :cond_1
    iget-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v3}, Lcom/mediatek/ims/SipRegInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 486
    iget-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object p2, p2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSipRegInfoIndRistrants:Landroid/os/RegistrantList;

    if-eqz p2, :cond_2

    .line 487
    iget-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object p2, p2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSipRegInfoIndRistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 490
    :cond_2
    return-void

    .line 470
    .end local v3    # "sipInfo":Lcom/mediatek/ims/SipRegInfo;
    .end local v4    # "account_id":I
    .end local v5    # "response_code":I
    .local p2, "account_id":I
    .local p3, "response_code":I
    :cond_3
    move v4, p2

    move v5, p3

    .line 471
    .end local p2    # "account_id":I
    .end local p3    # "response_code":I
    .restart local v4    # "account_id":I
    .restart local v5    # "response_code":I
    :goto_0
    return-void
.end method

.method public speechCodecInfoIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # I

    .line 1099
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1100
    filled-new-array {p2}, [I

    move-result-object v0

    .line 1103
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_SPEECH_CODEC_INFO, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1107
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1110
    :cond_0
    return-void
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 742
    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 747
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 749
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 751
    :cond_0
    return-void
.end method

.method public videoRingtoneEventInd(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "event"    # [Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 762
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc3a

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 766
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 775
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 777
    :cond_1
    return-void

    .line 767
    :cond_2
    :goto_0
    return-void
.end method

.method public volteSetting(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isEnable"    # Z

    .line 397
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 399
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    filled-new-array {p2, v0}, [I

    move-result-object v0

    .line 402
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 405
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingValue:Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 408
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 410
    :cond_0
    return-void
.end method
