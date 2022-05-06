.class public Lcom/talkray/arcvoice/ArcAudioMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fv:Ljava/lang/String;

.field private fw:Ljava/lang/String;

.field private fx:Ljava/lang/String;

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fx:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fv:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fw:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->length:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fx:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fv:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fw:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fx:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->length:I

    .line 24
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fx:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->length:I

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fv:Ljava/lang/String;

    return-object v0
.end method

.method public isGroupMessage()Z
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcAudioMessage;->fx:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
