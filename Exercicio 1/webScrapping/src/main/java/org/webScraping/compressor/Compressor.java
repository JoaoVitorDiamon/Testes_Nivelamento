package org.webScraping.compressor;

import com.github.junrar.Archive;
import com.github.junrar.rarfile.FileHeader;
import org.webScraping.logger.CustomLogger;

import java.io.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;


public class Compressor {
    public static void compactarPastaParaZip(String pastaEntrada) {
        String diretorioProjeto = System.getProperty("user.dir");
        File pastaDownload = new File(diretorioProjeto, "Downloads");
        String arquivoZip = pastaDownload.getAbsolutePath() + File.separator + "PDF.zip";
        try (FileOutputStream fos = new FileOutputStream(arquivoZip);
             ZipOutputStream zos = new ZipOutputStream(new BufferedOutputStream(fos))) {
            compactarPasta(new File(pastaEntrada), zos, pastaEntrada);
            CustomLogger.info("Compactação para ZIP realizada com sucesso! Arquivo salvo em: " + arquivoZip);
        } catch (IOException e) {
            CustomLogger.error("Erro ao Compactar pasta:" ,e);
        }
    }

    private static void compactarPasta(File pasta, ZipOutputStream zos, String caminhoBase) throws IOException {
        File[] arquivos = pasta.listFiles();
        if (arquivos == null) return;

        for (File arquivo : arquivos) {
            if (arquivo.isDirectory()) {
                compactarPasta(arquivo, zos, caminhoBase + "/" + arquivo.getName());
            } else {
                compactarArquivo(arquivo, zos, caminhoBase);
            }
        }
    }

    private static void compactarArquivo(File arquivo, ZipOutputStream zos, String caminhoBase) throws IOException {
        try (FileInputStream fis = new FileInputStream(arquivo)) {
            ZipEntry entry = new ZipEntry(arquivo.getName());
            zos.putNextEntry(entry);

            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = fis.read(buffer)) != -1) {
                zos.write(buffer, 0, bytesRead);
            }
            zos.closeEntry();
        }
    }
}
