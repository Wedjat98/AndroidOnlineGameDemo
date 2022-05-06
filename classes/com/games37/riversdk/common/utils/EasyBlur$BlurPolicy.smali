.class public final enum Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;
.super Ljava/lang/Enum;
.source "EasyBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/common/utils/EasyBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlurPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

.field public static final enum FAST_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

.field public static final enum RS_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    const-string v1, "RS_BLUR"

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->RS_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    .line 37
    new-instance v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    const-string v1, "FAST_BLUR"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->FAST_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    sget-object v1, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->RS_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->FAST_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->$VALUES:[Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->$VALUES:[Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    invoke-virtual {v0}, [Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    return-object v0
.end method
