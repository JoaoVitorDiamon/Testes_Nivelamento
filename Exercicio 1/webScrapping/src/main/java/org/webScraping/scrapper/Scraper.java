package org.webScraping.scrapper;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.webScraping.logger.CustomLogger;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

public class Scraper {
    public static List<String> getPdfLinks(String url)  {
        try {
            Document document = Jsoup.connect(url).get();
            CustomLogger.info("Links obtido com sucesso");
            return document.select("a[href$=.pdf]")
                    .stream()
                    .map(link -> link.absUrl("href"))
                    .filter(pdfURL -> {
                        String fileName = pdfURL.toLowerCase();
                        return fileName.contains("anexo_i") || fileName.contains("anexo_ii");
                    }).collect(Collectors.toList());

        } catch (Exception e) {
            CustomLogger.error("Erro ao baixar pdfs", e);
            return null;
        }
    }
}

