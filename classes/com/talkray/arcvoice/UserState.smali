.class public final enum Lcom/talkray/arcvoice/UserState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/talkray/arcvoice/UserState;

.field public static final enum CONNECTED:Lcom/talkray/arcvoice/UserState;

.field public static final enum DISCONNECTED:Lcom/talkray/arcvoice/UserState;

.field public static final enum SPEAKING:Lcom/talkray/arcvoice/UserState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/talkray/arcvoice/UserState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/UserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/UserState;->DISCONNECTED:Lcom/talkray/arcvoice/UserState;

    .line 13
    new-instance v0, Lcom/talkray/arcvoice/UserState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/talkray/arcvoice/UserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/UserState;->CONNECTED:Lcom/talkray/arcvoice/UserState;

    .line 14
    new-instance v0, Lcom/talkray/arcvoice/UserState;

    const-string v1, "SPEAKING"

    invoke-direct {v0, v1, v4}, Lcom/talkray/arcvoice/UserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/UserState;->SPEAKING:Lcom/talkray/arcvoice/UserState;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/talkray/arcvoice/UserState;

    sget-object v1, Lcom/talkray/arcvoice/UserState;->DISCONNECTED:Lcom/talkray/arcvoice/UserState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/talkray/arcvoice/UserState;->CONNECTED:Lcom/talkray/arcvoice/UserState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/talkray/arcvoice/UserState;->SPEAKING:Lcom/talkray/arcvoice/UserState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/talkray/arcvoice/UserState;->$VALUES:[Lcom/talkray/arcvoice/UserState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/talkray/arcvoice/UserState;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/talkray/arcvoice/UserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/talkray/arcvoice/UserState;

    return-object v0
.end method

.method public static values()[Lcom/talkray/arcvoice/UserState;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/talkray/arcvoice/UserState;->$VALUES:[Lcom/talkray/arcvoice/UserState;

    invoke-virtual {v0}, [Lcom/talkray/arcvoice/UserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/talkray/arcvoice/UserState;

    return-object v0
.end method
