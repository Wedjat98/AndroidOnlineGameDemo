.class public Lcom/ledo/fantasy/game/IcefirePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "IcefirePhoneStateListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 10
    packed-switch p1, :pswitch_data_8

    .line 20
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 21
    return-void

    .line 10
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
