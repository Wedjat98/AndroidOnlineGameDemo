.class public final enum Lcom/talkray/arcvoice/client/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum fH:Lcom/talkray/arcvoice/client/b;


# instance fields
.field public fI:Landroid/content/Context;

.field private fJ:Lmobi/androidcloud/app/ptt/client/b;

.field private fK:Lmobi/androidcloud/lib/phone/a;

.field private fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

.field private fM:Lcom/talkray/arcvoice/ArcRegion;

.field private fN:Ljava/lang/String;

.field private fO:Ljava/lang/String;

.field private volatile fP:Ljava/lang/String;

.field private volatile fQ:Z

.field private volatile fR:Z

.field private fS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/talkray/arcvoice/client/b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/client/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkray/arcvoice/client/b;

    sget-object v1, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    .line 42
    iput-boolean v1, p0, Lcom/talkray/arcvoice/client/b;->fR:Z

    .line 44
    iput-boolean v1, p0, Lcom/talkray/arcvoice/client/b;->fS:Z

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    return-void
.end method

.method static synthetic a(Lcom/talkray/arcvoice/client/b;Lmobi/androidcloud/app/ptt/client/b;)Lmobi/androidcloud/app/ptt/client/b;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    return-object p1
.end method

.method static synthetic a(Lcom/talkray/arcvoice/client/b;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/talkray/arcvoice/client/b;->hL()V

    return-void
.end method

.method private b(Ljava/util/List;Lmobi/tikl/wire/control/a$H;)Ljava/util/HashMap;
    .registers 8

    .prologue
    .line 206
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 208
    if-eqz p1, :cond_3f

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$an;

    .line 210
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v3

    .line 212
    invoke-virtual {p0, v3}, Lcom/talkray/arcvoice/client/b;->b(Lmobi/androidcloud/lib/phone/a;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->Es()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 214
    new-instance v0, Lcom/talkray/arcvoice/MemberCallStatus;

    sget-object v4, Lcom/talkray/arcvoice/UserState;->SPEAKING:Lcom/talkray/arcvoice/UserState;

    invoke-direct {v0, v3, v4}, Lcom/talkray/arcvoice/MemberCallStatus;-><init>(Ljava/lang/String;Lcom/talkray/arcvoice/UserState;)V

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 216
    :cond_34
    new-instance v0, Lcom/talkray/arcvoice/MemberCallStatus;

    sget-object v4, Lcom/talkray/arcvoice/UserState;->CONNECTED:Lcom/talkray/arcvoice/UserState;

    invoke-direct {v0, v3, v4}, Lcom/talkray/arcvoice/MemberCallStatus;-><init>(Ljava/lang/String;Lcom/talkray/arcvoice/UserState;)V

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 219
    :cond_3f
    if-eqz p2, :cond_68

    .line 220
    invoke-static {p2}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$H;)[Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/phone/a;

    .line 223
    invoke-virtual {p0, v0}, Lcom/talkray/arcvoice/client/b;->b(Lmobi/androidcloud/lib/phone/a;)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v3, Lcom/talkray/arcvoice/MemberCallStatus;

    sget-object v4, Lcom/talkray/arcvoice/UserState;->DISCONNECTED:Lcom/talkray/arcvoice/UserState;

    invoke-direct {v3, v0, v4}, Lcom/talkray/arcvoice/MemberCallStatus;-><init>(Ljava/lang/String;Lcom/talkray/arcvoice/UserState;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 227
    :cond_68
    return-object v1
.end method

.method private hL()V
    .registers 2

    .prologue
    .line 199
    sget-object v0, Lmobi/androidcloud/lib/serverproxy/d;->iW:Lmobi/androidcloud/lib/serverproxy/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/serverproxy/d;->jL()V

    .line 200
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 96
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/a;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 97
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_13

    .line 98
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->CANNOT_CALL_WHILE_RECORDING:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v1}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onError(Lcom/talkray/arcvoice/ArcError;)V

    .line 109
    :cond_13
    :goto_13
    return-void

    .line 101
    :cond_14
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 102
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->INVALID_PERMISSIONS:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v1}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onError(Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_13

    .line 106
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    .line 107
    iput-object p1, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/app/ptt/client/b;->J(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public G(Ljava/lang/String;)Lmobi/androidcloud/lib/phone/a;
    .registers 4

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/talkray/arcvoice/client/b;->fN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "xy"

    invoke-static {v1, v0}, Lcom/google/protobuf/d;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    return-object v0
.end method

.method public H(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 280
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 291
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcRegion;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoiceEventHandler;)V
    .registers 9

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/talkray/arcvoice/client/b;->hQ()V

    .line 63
    iput-object p1, p0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    .line 64
    iput-object p6, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    .line 65
    iput-object p2, p0, Lcom/talkray/arcvoice/client/b;->fN:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/talkray/arcvoice/client/b;->fO:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p5}, Lcom/talkray/arcvoice/client/b;->G(Ljava/lang/String;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    iput-object v0, p0, Lcom/talkray/arcvoice/client/b;->fK:Lmobi/androidcloud/lib/phone/a;

    .line 68
    iput-object p4, p0, Lcom/talkray/arcvoice/client/b;->fM:Lcom/talkray/arcvoice/ArcRegion;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fR:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fS:Z

    .line 72
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/talkray/arcvoice/client/b;->fK:Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/a;->c(Lmobi/androidcloud/lib/phone/a;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetooth available? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lmobi/androidcloud/lib/audio/d;->gf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    new-instance v0, Lcom/talkray/arcvoice/client/c;

    invoke-direct {v0, p0}, Lcom/talkray/arcvoice/client/c;-><init>(Lcom/talkray/arcvoice/client/b;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method

.method public a(Ljava/util/List;Lmobi/tikl/wire/control/a$H;)V
    .registers 5

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/talkray/arcvoice/client/b;->b(Ljava/util/List;Lmobi/tikl/wire/control/a$H;)Ljava/util/HashMap;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v1, :cond_d

    .line 156
    iget-object v1, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    invoke-interface {v1, v0}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onCallStatusUpdate(Ljava/util/Map;)V

    .line 157
    :cond_d
    return-void
.end method

.method protected b(Lmobi/androidcloud/lib/phone/a;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 231
    if-nez p1, :cond_5

    .line 237
    :cond_4
    :goto_4
    return-object v0

    .line 234
    :cond_5
    iget-object v1, p1, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/talkray/arcvoice/client/b;->fN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    array-length v2, v1

    if-le v2, v4, :cond_4

    .line 236
    aget-object v0, v1, v4

    goto :goto_4
.end method

.method public endCall()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    invoke-virtual {v0}, Lmobi/androidcloud/app/ptt/client/b;->hT()V

    .line 115
    return-void
.end method

.method public hF()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    return v0
.end method

.method public hG()Lmobi/androidcloud/lib/phone/a;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fK:Lmobi/androidcloud/lib/phone/a;

    return-object v0
.end method

.method public hH()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    invoke-interface {v0}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onCallConnected()V

    .line 164
    :cond_9
    return-void
.end method

.method public hI()V
    .registers 3

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 170
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    iget-object v1, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/app/ptt/client/b;->J(Ljava/lang/String;)V

    .line 176
    :cond_f
    :goto_f
    return-void

    .line 174
    :cond_10
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_f

    .line 175
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    invoke-interface {v0}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onCallDisconnected()V

    goto :goto_f
.end method

.method public hJ()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fR:Z

    if-nez v0, :cond_10

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fR:Z

    .line 182
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    invoke-interface {v0}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onRegister()V

    .line 186
    :cond_10
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 187
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    iget-object v1, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/app/ptt/client/b;->J(Ljava/lang/String;)V

    .line 188
    :cond_1f
    return-void
.end method

.method public hK()V
    .registers 3

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_11

    .line 195
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->CALL_FAILED:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v1}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onError(Lcom/talkray/arcvoice/ArcError;)V

    .line 196
    :cond_11
    return-void
.end method

.method public hM()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fO:Ljava/lang/String;

    return-object v0
.end method

.method public hN()Lcom/talkray/arcvoice/ArcRegion;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fM:Lcom/talkray/arcvoice/ArcRegion;

    return-object v0
.end method

.method public hO()V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->JOIN_GROUP_FAILED:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v1}, Lcom/talkray/arcvoice/ArcVoiceEventHandler;->onError(Lcom/talkray/arcvoice/ArcError;)V

    .line 286
    :cond_b
    return-void
.end method

.method public hP()Lcom/talkray/arcvoice/ArcSessionState;
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    if-eqz v0, :cond_16

    .line 295
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    if-eqz v0, :cond_13

    .line 296
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jW()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 297
    sget-object v0, Lcom/talkray/arcvoice/ArcSessionState;->CONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

    .line 301
    :goto_12
    return-object v0

    .line 299
    :cond_13
    sget-object v0, Lcom/talkray/arcvoice/ArcSessionState;->CONNECTING:Lcom/talkray/arcvoice/ArcSessionState;

    goto :goto_12

    .line 301
    :cond_16
    sget-object v0, Lcom/talkray/arcvoice/ArcSessionState;->DISCONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

    goto :goto_12
.end method

.method public hQ()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 306
    iput-boolean v2, p0, Lcom/talkray/arcvoice/client/b;->fS:Z

    .line 307
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    .line 308
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    if-eqz v0, :cond_f

    .line 309
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    invoke-virtual {v0}, Lmobi/androidcloud/app/ptt/client/b;->hT()V

    .line 310
    :cond_f
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    .line 311
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fK:Lmobi/androidcloud/lib/phone/a;

    .line 312
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fL:Lcom/talkray/arcvoice/ArcVoiceEventHandler;

    .line 313
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fM:Lcom/talkray/arcvoice/ArcRegion;

    .line 314
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fN:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fO:Ljava/lang/String;

    .line 317
    iput-object v1, p0, Lcom/talkray/arcvoice/client/b;->fP:Ljava/lang/String;

    .line 318
    iput-boolean v2, p0, Lcom/talkray/arcvoice/client/b;->fQ:Z

    .line 319
    iput-boolean v2, p0, Lcom/talkray/arcvoice/client/b;->fR:Z

    .line 321
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/a;->iW()V

    .line 322
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/b;->fS:Z

    return v0
.end method

.method public muteOthers()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    if-eqz v0, :cond_9

    .line 135
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jY()V

    .line 137
    :cond_9
    return-void
.end method

.method public muteSelf()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    if-eqz v0, :cond_9

    .line 123
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->kd()V

    .line 125
    :cond_9
    return-void
.end method

.method public unmuteOthers()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    if-eqz v0, :cond_9

    .line 141
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jZ()V

    .line 143
    :cond_9
    return-void
.end method

.method public unmuteSelf()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/talkray/arcvoice/client/b;->fJ:Lmobi/androidcloud/app/ptt/client/b;

    if-eqz v0, :cond_9

    .line 129
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->ke()V

    .line 131
    :cond_9
    return-void
.end method
