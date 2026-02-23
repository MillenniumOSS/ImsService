.class public Lcom/mediatek/ims/DefaultConferenceHandler;
.super Ljava/lang/Object;
.source "DefaultConferenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    }
.end annotation


# static fields
.field protected static final CONFERENCE_STATE_ACTIVE:I = 0x1

.field protected static final CONFERENCE_STATE_CLOSED:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceHandler"


# instance fields
.field protected mConfCallId:I

.field protected mConfState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfState:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfCallId:I

    .line 61
    const-string v0, "ImsConferenceHandler"

    const-string v1, "DefaultConferenceHandler()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public addFirstMergeParticipant(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .line 106
    return-void
.end method

.method public addLocalCache([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 108
    return-void
.end method

.method public closeConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeConference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfCallId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConferenceHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "parsedCallId":I
    nop

    .line 92
    iget v1, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfCallId:I

    if-eq v0, v1, :cond_1

    .line 93
    return-void

    .line 95
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfState:I

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfCallId:I

    .line 97
    return-void

    .line 87
    .end local v0    # "parsedCallId":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-void
.end method

.method public firstMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId_1"    # Ljava/lang/String;
    .param p2, "callId_2"    # Ljava/lang/String;
    .param p3, "num_1"    # Ljava/lang/String;
    .param p4, "num_2"    # Ljava/lang/String;

    .line 104
    return-void
.end method

.method public getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isRtry"    # Z

    .line 118
    return-object p1
.end method

.method public isConferenceActive()Z
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConferenceActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConferenceHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v0, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyParticipantComplete()V
    .locals 0

    .line 114
    return-void
.end method

.method public modifyParticipantFailed()V
    .locals 0

    .line 116
    return-void
.end method

.method public startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 67
    const-string v0, "startConference"

    const-string v1, "ImsConferenceHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfCallId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid callId format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/DefaultConferenceHandler;->mConfState:I

    .line 77
    return-void
.end method

.method public tryAddParticipant(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .line 110
    return-void
.end method

.method public tryRemoveParticipant(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .line 112
    return-void
.end method
