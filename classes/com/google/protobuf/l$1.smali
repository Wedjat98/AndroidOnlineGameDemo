.class final Lcom/google/protobuf/l$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic b:[I

.field static final synthetic cS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1086
    invoke-static {}, Lcom/google/protobuf/l$f$a;->gz()[Lcom/google/protobuf/l$f$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/l$1;->cS:[I

    :try_start_9
    sget-object v0, Lcom/google/protobuf/l$1;->cS:[I

    sget-object v1, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_129

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/protobuf/l$1;->cS:[I

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_126

    .line 1007
    :goto_1f
    invoke-static {}, Lcom/google/protobuf/l$f$b;->gA()[Lcom/google/protobuf/l$f$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/l$1;->b:[I

    :try_start_28
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dE:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_123

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dQ:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_120

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dO:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_11d

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dM:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_11a

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dG:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_117

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dC:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_114

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dR:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_111

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dP:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_81} :catch_10e

    :goto_81
    :try_start_81
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dD:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8d} :catch_10c

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dF:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_99} :catch_10a

    :goto_99
    :try_start_99
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dB:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a5} :catch_108

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dA:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b1} :catch_106

    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dH:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bd} :catch_104

    :goto_bd
    :try_start_bd
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dI:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c9} :catch_102

    :goto_c9
    :try_start_c9
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dL:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d5} :catch_100

    :goto_d5
    :try_start_d5
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dN:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e1} :catch_fe

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ed} :catch_fc

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/google/protobuf/l$1;->b:[I

    sget-object v1, Lcom/google/protobuf/l$f$b;->dJ:Lcom/google/protobuf/l$f$b;

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f9} :catch_fa

    :goto_f9
    return-void

    :catch_fa
    move-exception v0

    goto :goto_f9

    :catch_fc
    move-exception v0

    goto :goto_ed

    :catch_fe
    move-exception v0

    goto :goto_e1

    :catch_100
    move-exception v0

    goto :goto_d5

    :catch_102
    move-exception v0

    goto :goto_c9

    :catch_104
    move-exception v0

    goto :goto_bd

    :catch_106
    move-exception v0

    goto :goto_b1

    :catch_108
    move-exception v0

    goto :goto_a5

    :catch_10a
    move-exception v0

    goto :goto_99

    :catch_10c
    move-exception v0

    goto :goto_8d

    :catch_10e
    move-exception v0

    goto/16 :goto_81

    :catch_111
    move-exception v0

    goto/16 :goto_75

    :catch_114
    move-exception v0

    goto/16 :goto_6a

    :catch_117
    move-exception v0

    goto/16 :goto_5f

    :catch_11a
    move-exception v0

    goto/16 :goto_54

    :catch_11d
    move-exception v0

    goto/16 :goto_49

    :catch_120
    move-exception v0

    goto/16 :goto_3e

    :catch_123
    move-exception v0

    goto/16 :goto_33

    :catch_126
    move-exception v0

    goto/16 :goto_1f

    :catch_129
    move-exception v0

    goto/16 :goto_14
.end method
