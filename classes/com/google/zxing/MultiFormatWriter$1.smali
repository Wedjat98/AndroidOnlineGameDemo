.class synthetic Lcom/google/zxing/MultiFormatWriter$1;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/MultiFormatWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$zxing$BarcodeFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    invoke-static {}, Lcom/google/zxing/BarcodeFormat;->values()[Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    :try_start_9
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_b9

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_b6

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_b3

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b1

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_af

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_ad

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_ab

    :goto_56
    :try_start_56
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_a9

    :goto_62
    :try_start_62
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_a7

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_a5

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_a3

    :goto_86
    :try_start_86
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_a1

    :goto_92
    :try_start_92
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_9f

    :goto_9e
    return-void

    :catch_9f
    move-exception v0

    goto :goto_9e

    :catch_a1
    move-exception v0

    goto :goto_92

    :catch_a3
    move-exception v0

    goto :goto_86

    :catch_a5
    move-exception v0

    goto :goto_7a

    :catch_a7
    move-exception v0

    goto :goto_6e

    :catch_a9
    move-exception v0

    goto :goto_62

    :catch_ab
    move-exception v0

    goto :goto_56

    :catch_ad
    move-exception v0

    goto :goto_4b

    :catch_af
    move-exception v0

    goto :goto_40

    :catch_b1
    move-exception v0

    goto :goto_35

    :catch_b3
    move-exception v0

    goto/16 :goto_2a

    :catch_b6
    move-exception v0

    goto/16 :goto_1f

    :catch_b9
    move-exception v0

    goto/16 :goto_14
.end method
