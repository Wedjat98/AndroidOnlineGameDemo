.class public final enum Lcom/talkray/arcvoice/ArcSessionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/talkray/arcvoice/ArcSessionState;

.field public static final enum CONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

.field public static final enum CONNECTING:Lcom/talkray/arcvoice/ArcSessionState;

.field public static final enum DISCONNECTED:Lcom/talkray/arcvoice/ArcSessionState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/talkray/arcvoice/ArcSessionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcSessionState;->CONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

    .line 21
    new-instance v0, Lcom/talkray/arcvoice/ArcSessionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/talkray/arcvoice/ArcSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcSessionState;->CONNECTING:Lcom/talkray/arcvoice/ArcSessionState;

    .line 26
    new-instance v0, Lcom/talkray/arcvoice/ArcSessionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/talkray/arcvoice/ArcSessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcSessionState;->DISCONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/talkray/arcvoice/ArcSessionState;

    sget-object v1, Lcom/talkray/arcvoice/ArcSessionState;->CONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/talkray/arcvoice/ArcSessionState;->CONNECTING:Lcom/talkray/arcvoice/ArcSessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/talkray/arcvoice/ArcSessionState;->DISCONNECTED:Lcom/talkray/arcvoice/ArcSessionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/talkray/arcvoice/ArcSessionState;->$VALUES:[Lcom/talkray/arcvoice/ArcSessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/talkray/arcvoice/ArcSessionState;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/talkray/arcvoice/ArcSessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/talkray/arcvoice/ArcSessionState;

    return-object v0
.end method

.method public static values()[Lcom/talkray/arcvoice/ArcSessionState;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/talkray/arcvoice/ArcSessionState;->$VALUES:[Lcom/talkray/arcvoice/ArcSessionState;

    invoke-virtual {v0}, [Lcom/talkray/arcvoice/ArcSessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/talkray/arcvoice/ArcSessionState;

    return-object v0
.end method
