.class public Lcom/talkray/arcvoice/MemberCallStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fB:Ljava/lang/String;

.field private fC:Lcom/talkray/arcvoice/UserState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/talkray/arcvoice/UserState;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/talkray/arcvoice/MemberCallStatus;->fB:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/talkray/arcvoice/MemberCallStatus;->fC:Lcom/talkray/arcvoice/UserState;

    .line 18
    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/talkray/arcvoice/MemberCallStatus;->fB:Ljava/lang/String;

    return-object v0
.end method

.method public getUserState()Lcom/talkray/arcvoice/UserState;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/talkray/arcvoice/MemberCallStatus;->fC:Lcom/talkray/arcvoice/UserState;

    return-object v0
.end method
