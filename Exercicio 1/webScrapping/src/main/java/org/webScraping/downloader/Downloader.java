package org.webScraping.downloader;

import org.jsoup.Jsoup;
import org.webScraping.logger.CustomLogger;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class Downloader {
    public static void downloadPdf(List<String> pdfUrls) {
        CustomLogger.info("Iniciando Download dos PDFs");

        for (String urlPDF : pdfUrls) {
            try {
                String namePdf = urlPDF.substring(urlPDF.lastIndexOf("/") + 1);
                Path outputPath = Paths.get("Downloads", "PDF", namePdf);
                Files.createDirectories(outputPath.getParent());

                if (Files.exists(outputPath)) {
                    CustomLogger.info("Arquivo já existe" + namePdf);
                    continue;
                }

                try (InputStream inputStream = Jsoup.connect(urlPDF)
                        .ignoreContentType(true)
                        .execute()
                        .bodyStream()) {

                    Files.copy(inputStream, outputPath);
                    CustomLogger.info("Download feito com sucesso: " + namePdf);
                }
            } catch (Exception e) {
                CustomLogger.error("Falha no Download:", e);
            }
        }
    }
}

