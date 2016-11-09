.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_clearKeyguardWallpaper:I = 0x9

.field static final TRANSACTION_clearWallpaper:I = 0x8

.field static final TRANSACTION_getHeightHint:I = 0xd

.field static final TRANSACTION_getKeyguardWallpaper:I = 0x6

.field static final TRANSACTION_getName:I = 0xf

.field static final TRANSACTION_getWallpaper:I = 0x5

.field static final TRANSACTION_getWallpaperInfo:I = 0x7

.field static final TRANSACTION_getWidthHint:I = 0xc

.field static final TRANSACTION_hasNamedWallpaper:I = 0xa

.field static final TRANSACTION_isWallpaperSupported:I = 0x11

.field static final TRANSACTION_setDimensionHints:I = 0xb

.field static final TRANSACTION_setDisplayPadding:I = 0xe

.field static final TRANSACTION_setKeyguardWallpaper:I = 0x2

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x4

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x3

.field static final TRANSACTION_settingsRestored:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.IWallpaperManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IWallpaperManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 271
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 43
    :sswitch_0
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v15, 0x1

    return v15

    .line 48
    :sswitch_1
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 54
    .local v12, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v12, :cond_0

    .line 56
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    const/4 v15, 0x1

    return v15

    .line 60
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->setKeyguardWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 70
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v12, :cond_1

    .line 72
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_1
    const/4 v15, 0x1

    return v15

    .line 76
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 82
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    .line 85
    sget-object v15, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 91
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 92
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v15, 0x1

    return v15

    .line 88
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 98
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    .line 101
    sget-object v15, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 106
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v15, 0x1

    return v15

    .line 104
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 112
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v7, "_arg1":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 118
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v12, :cond_4

    .line 120
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    :goto_4
    if-eqz v7, :cond_5

    .line 127
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_5
    const/4 v15, 0x1

    return v15

    .line 124
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 131
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 137
    .end local v2    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_6
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local v7    # "_arg1":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/app/IWallpaperManager$Stub;->getKeyguardWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 143
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v12, :cond_6

    .line 145
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_6
    if-eqz v7, :cond_7

    .line 152
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_7
    const/4 v15, 0x1

    return v15

    .line 149
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 156
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 162
    .end local v2    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_7
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v11

    .line 164
    .local v11, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v11, :cond_8

    .line 166
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v15}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_8
    const/4 v15, 0x1

    return v15

    .line 170
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 176
    .end local v11    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_8
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v15, 0x1

    return v15

    .line 185
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->clearKeyguardWallpaper()V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v15, 0x1

    return v15

    .line 192
    :sswitch_a
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v14

    .line 196
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v14, :cond_9

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v15, 0x1

    return v15

    .line 197
    :cond_9
    const/4 v15, 0x0

    goto :goto_9

    .line 202
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_b
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 208
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6, v9}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v15, 0x1

    return v15

    .line 215
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    move-result v10

    .line 217
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v15, 0x1

    return v15

    .line 223
    .end local v10    # "_result":I
    :sswitch_d
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    move-result v10

    .line 225
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v15, 0x1

    return v15

    .line 231
    .end local v10    # "_result":I
    :sswitch_e
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_a

    .line 234
    sget-object v15, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 240
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v15, 0x1

    return v15

    .line 237
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/graphics/Rect;
    goto :goto_a

    .line 247
    .end local v4    # "_arg0":Landroid/graphics/Rect;
    :sswitch_f
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    const/4 v15, 0x1

    return v15

    .line 255
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v15, 0x1

    return v15

    .line 262
    :sswitch_11
    const-string/jumbo v15, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v14

    .line 266
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v14, :cond_b

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v15, 0x1

    return v15

    .line 267
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
