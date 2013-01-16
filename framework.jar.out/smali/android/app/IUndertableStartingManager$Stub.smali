.class public abstract Landroid/app/IUndertableStartingManager$Stub;
.super Landroid/os/Binder;
.source "IUndertableStartingManager.java"

# interfaces
.implements Landroid/app/IUndertableStartingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUndertableStartingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUndertableStartingManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUndertableStartingManager"

.field static final TRANSACTION_addNotification:I = 0x1

.field static final TRANSACTION_disableAutoStarting:I = 0x5

.field static final TRANSACTION_enableAutoStarting:I = 0x4

.field static final TRANSACTION_getTopPendingIntentBy:I = 0x8

.field static final TRANSACTION_initCheckAndStartActivityList:I = 0x6

.field static final TRANSACTION_isEnableAutoStarting:I = 0x7

.field static final TRANSACTION_removeNotification:I = 0x3

.field static final TRANSACTION_updateNotification:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IUndertableStartingManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUndertableStartingManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUndertableStartingManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.app.IUndertableStartingManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUndertableStartingManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IUndertableStartingManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/app/IUndertableStartingManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IUndertableStartingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Lcom/android/internal/statusbar/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 58
    .local v2, _arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/app/IUndertableStartingManager$Stub;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v2           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    goto :goto_1

    .line 64
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :sswitch_2
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    sget-object v5, Lcom/android/internal/statusbar/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 74
    .restart local v2       #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroid/app/IUndertableStartingManager$Stub;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v2           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    goto :goto_2

    .line 80
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Lcom/android/internal/statusbar/StatusBarNotification;
    :sswitch_3
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/app/IUndertableStartingManager$Stub;->removeNotification(Landroid/os/IBinder;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/IUndertableStartingManager$Stub;->enableAutoStarting()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    :sswitch_5
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/IUndertableStartingManager$Stub;->disableAutoStarting()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    :sswitch_6
    const-string v5, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 108
    .local v3, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0, v1, v3}, Landroid/app/IUndertableStartingManager$Stub;->initCheckAndStartActivityList(Ljava/util/List;Ljava/util/List;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_7
    const-string v7, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/IUndertableStartingManager$Stub;->isEnableAutoStarting()Z

    move-result v4

    .line 116
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v4           #_result:Z
    :sswitch_8
    const-string v7, "android.app.IUndertableStartingManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IUndertableStartingManager$Stub;->getTopPendingIntentBy(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 126
    .local v4, _result:Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v4, :cond_3

    .line 128
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v4, p3, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 132
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
