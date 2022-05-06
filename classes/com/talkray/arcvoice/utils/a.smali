.class public final enum Lcom/talkray/arcvoice/utils/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum fU:Lcom/talkray/arcvoice/utils/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/talkray/arcvoice/utils/a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/utils/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/utils/a;->fU:Lcom/talkray/arcvoice/utils/a;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkray/arcvoice/utils/a;

    sget-object v1, Lcom/talkray/arcvoice/utils/a;->fU:Lcom/talkray/arcvoice/utils/a;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(ZIIILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    .prologue
    .line 25
    return-void
.end method

.method public hR()V
    .registers 1

    .prologue
    .line 11
    return-void
.end method

.method public hS()V
    .registers 1

    .prologue
    .line 15
    return-void
.end method

.method public n(Z)V
    .registers 2

    .prologue
    .line 41
    return-void
.end method
