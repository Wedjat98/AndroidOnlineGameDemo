.class public final enum Lcom/talkray/arcvoice/ArcRegion;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/talkray/arcvoice/ArcRegion;

.field public static final enum BEIJING:Lcom/talkray/arcvoice/ArcRegion;

.field public static final enum VIRGINIA:Lcom/talkray/arcvoice/ArcRegion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/talkray/arcvoice/ArcRegion;

    const-string v1, "VIRGINIA"

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcRegion;->VIRGINIA:Lcom/talkray/arcvoice/ArcRegion;

    new-instance v0, Lcom/talkray/arcvoice/ArcRegion;

    const-string v1, "BEIJING"

    invoke-direct {v0, v1, v3}, Lcom/talkray/arcvoice/ArcRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcRegion;->BEIJING:Lcom/talkray/arcvoice/ArcRegion;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/talkray/arcvoice/ArcRegion;

    sget-object v1, Lcom/talkray/arcvoice/ArcRegion;->VIRGINIA:Lcom/talkray/arcvoice/ArcRegion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/talkray/arcvoice/ArcRegion;->BEIJING:Lcom/talkray/arcvoice/ArcRegion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/talkray/arcvoice/ArcRegion;->$VALUES:[Lcom/talkray/arcvoice/ArcRegion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/talkray/arcvoice/ArcRegion;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/talkray/arcvoice/ArcRegion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/talkray/arcvoice/ArcRegion;

    return-object v0
.end method

.method public static values()[Lcom/talkray/arcvoice/ArcRegion;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/talkray/arcvoice/ArcRegion;->$VALUES:[Lcom/talkray/arcvoice/ArcRegion;

    invoke-virtual {v0}, [Lcom/talkray/arcvoice/ArcRegion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/talkray/arcvoice/ArcRegion;

    return-object v0
.end method
