.class public Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DtmfQueueRR"
.end annotation


# instance fields
.field public params:[Ljava/lang/Object;

.field public rr:Lcom/mediatek/ims/ril/RILRequest;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;
    .param p2, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 573
    iput-object p3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 574
    return-void
.end method
