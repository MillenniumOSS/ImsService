.class public Lcom/mediatek/ims/SipRegInfo;
.super Ljava/lang/Object;
.source "SipRegInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"


# instance fields
.field public mAccountId:I

.field public mCallId:Ljava/lang/String;

.field public mCseq:I

.field public mDirection:Ljava/lang/String;

.field public mMethod:Ljava/lang/String;

.field public mReasonCause:I

.field public mReasonPhrase:Ljava/lang/String;

.field public mReasonText:Ljava/lang/String;

.field public mResponseCode:I

.field public mSipMsgType:Ljava/lang/String;

.field public mWarnText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # I
    .param p2, "responseCode"    # I
    .param p3, "direction"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "reasonPhrase"    # Ljava/lang/String;
    .param p7, "warnText"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/SipRegInfo;->mCseq:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonCause:I

    .line 62
    iput p1, p0, Lcom/mediatek/ims/SipRegInfo;->mAccountId:I

    .line 63
    iput-object p3, p0, Lcom/mediatek/ims/SipRegInfo;->mDirection:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/mediatek/ims/SipRegInfo;->mSipMsgType:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/mediatek/ims/SipRegInfo;->mMethod:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/mediatek/ims/SipRegInfo;->mResponseCode:I

    .line 67
    iput-object p6, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonPhrase:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/mediatek/ims/SipRegInfo;->mWarnText:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public setSipRegExInfo(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cseq"    # I
    .param p2, "reasonCause"    # I
    .param p3, "reasonText"    # Ljava/lang/String;
    .param p4, "callId"    # Ljava/lang/String;

    .line 72
    iput p1, p0, Lcom/mediatek/ims/SipRegInfo;->mCseq:I

    .line 73
    iput p2, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonCause:I

    .line 74
    iput-object p3, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonText:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/mediatek/ims/SipRegInfo;->mCallId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipRegInfo :: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/SipRegInfo;->mAccountId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/SipRegInfo;->mDirection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/SipRegInfo;->mSipMsgType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/SipRegInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/SipRegInfo;->mResponseCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonPhrase:Ljava/lang/String;

    .line 80
    const-string v3, "ImsService"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/SipRegInfo;->mWarnText:Ljava/lang/String;

    .line 81
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/SipRegInfo;->mCseq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonCause:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/SipRegInfo;->mReasonText:Ljava/lang/String;

    .line 82
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/SipRegInfo;->mCallId:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method
