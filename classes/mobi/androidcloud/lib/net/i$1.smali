.class final synthetic Lmobi/androidcloud/lib/net/i$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/net/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic it:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 245
    invoke-static {}, Lcom/talkray/arcvoice/ArcRegion;->values()[Lcom/talkray/arcvoice/ArcRegion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmobi/androidcloud/lib/net/i$1;->it:[I

    :try_start_9
    sget-object v0, Lmobi/androidcloud/lib/net/i$1;->it:[I

    sget-object v1, Lcom/talkray/arcvoice/ArcRegion;->VIRGINIA:Lcom/talkray/arcvoice/ArcRegion;

    invoke-virtual {v1}, Lcom/talkray/arcvoice/ArcRegion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lmobi/androidcloud/lib/net/i$1;->it:[I

    sget-object v1, Lcom/talkray/arcvoice/ArcRegion;->BEIJING:Lcom/talkray/arcvoice/ArcRegion;

    invoke-virtual {v1}, Lcom/talkray/arcvoice/ArcRegion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
