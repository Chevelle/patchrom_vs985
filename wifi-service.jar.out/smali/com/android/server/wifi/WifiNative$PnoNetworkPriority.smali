.class public Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetworkPriority"
.end annotation


# instance fields
.field public networkId:I

.field public priority:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput p1, p0, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;->networkId:I

    .line 774
    iput p2, p0, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;->priority:I

    .line 772
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " Network ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 781
    const-string/jumbo v1, " Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
