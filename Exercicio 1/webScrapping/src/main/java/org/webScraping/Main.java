package org.webScraping;

import org.webScraping.compressor.Compressor;
import org.webScraping.downloader.Downloader;
import org.webScraping.scrapper.Scraper;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class Main {
    public static void main(String[] args){
        String url = "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos";
        List<String> linksPDF = Scraper.getPdfLinks(url);
        Downloader.downloadPdf(linksPDF);
        String diretorioProjeto = System.getProperty("user.dir");
        File pastaDownload = new File(diretorioProjeto, "Downloads/PDF");
        Compressor.compactarPastaParaZip(pastaDownload.toString());
    }
}