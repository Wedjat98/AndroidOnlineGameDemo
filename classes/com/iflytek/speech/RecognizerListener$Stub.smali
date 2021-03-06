.class public abstract Lcom/iflytek/speech/RecognizerListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/RecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.RecognizerListener"

.field static final TRANSACTION_onBeginOfSpeech:I = 0x2

.field static final TRANSACTION_onEndOfSpeech:I = 0x3

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onEvent:I = 0x6

.field static final TRANSACTION_onResult:I = 0x4

.field static final TRANSACTION_onVolumeChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/RecognizerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/RecognizerListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/RecognizerListener;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_84

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    :sswitch_a
    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/speech/RecognizerListener$Stub;->onVolumeChanged(I[B)V

    goto :goto_9

    :sswitch_21
    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/RecognizerListener$Stub;->onBeginOfSpeech()V

    goto :goto_9

    :sswitch_2a
    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/RecognizerListener$Stub;->onEndOfSpeech()V

    goto :goto_9

    :sswitch_33
    const-string v1, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    sget-object v0, Lcom/iflytek/speech/RecognizerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/RecognizerResult;

    :cond_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_51

    move v1, v2

    :goto_4d
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/speech/RecognizerListener$Stub;->onResult(Lcom/iflytek/speech/RecognizerResult;Z)V

    goto :goto_9

    :cond_51
    const/4 v1, 0x0

    goto :goto_4d

    :sswitch_53
    const-string v0, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/RecognizerListener$Stub;->onError(I)V

    goto :goto_9

    :sswitch_60
    const-string v1, "com.iflytek.speech.RecognizerListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_7f
    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/iflytek/speech/RecognizerListener$Stub;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_9

    nop

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_33
        0x5 -> :sswitch_53
        0x6 -> :sswitch_60
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
