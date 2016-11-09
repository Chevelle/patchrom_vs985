.class final Landroid/media/VolumePolicy$1;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/media/VolumePolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 98
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    .line 99
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 100
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 101
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    :goto_3
    invoke-direct/range {v0 .. v5}, Landroid/media/VolumePolicy;-><init>(ZZZIZ)V

    return-object v0

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v2, v6

    .line 99
    goto :goto_1

    :cond_2
    move v3, v6

    .line 100
    goto :goto_2

    :cond_3
    move v5, v6

    .line 102
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/VolumePolicy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 107
    new-array v0, p1, [Landroid/media/VolumePolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->newArray(I)[Landroid/media/VolumePolicy;

    move-result-object v0

    return-object v0
.end method
